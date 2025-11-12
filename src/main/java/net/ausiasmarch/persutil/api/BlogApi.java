package net.ausiasmarch.persutil.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import net.ausiasmarch.persutil.entity.BlogEntity;
import net.ausiasmarch.persutil.service.AleatorioService;
import net.ausiasmarch.persutil.service.BlogService;
import net.ausiasmarch.persutil.service.BlogServiceRandom;
import net.ausiasmarch.persutil.service.BlogServiceRandomFrases;

@RestController
@RequestMapping("/blog")
public class BlogApi {

    @Autowired
    AleatorioService aleatorioService;

    @Autowired
    BlogService blogService;

    @Autowired
    BlogServiceRandom blogServiceRandom;

    @Autowired
    BlogServiceRandomFrases blogServiceRandomFrases;

    @GetMapping("")
    public ResponseEntity<String> blog() {
        return new ResponseEntity<>("Página de blog", HttpStatus.OK);
    }

    @GetMapping("/saludar")
    public ResponseEntity<String> saludar() {
        return new ResponseEntity<>("\"Hola desde el blog\"", HttpStatus.OK);
    }

    @GetMapping("/aleatorio")
    public ResponseEntity<Integer> aleatorio() {
        int randomNum = (int) (Math.random() * 100) + 1;
        return ResponseEntity.ok(randomNum);
    }

    @GetMapping("/aleatorio/{min}/{max}")
    public ResponseEntity<Integer> aleatorioRange(
            @PathVariable int min,
            @PathVariable int max) {
        return ResponseEntity.ok(aleatorioService.generateRandomNum(max, min));
    }

    @GetMapping("/rellenauno")
    public ResponseEntity<Long> rellenaBlog() {
        return ResponseEntity.ok(blogService.rellenaBlog());
    }

    @GetMapping("/rellena_aleatorio")
    public ResponseEntity<Long> rellenaBlogAleatorio() {
        return ResponseEntity.ok(blogServiceRandom.rellenaBlogAleatorio());
    }

    @GetMapping("/rellena_frase")
    public ResponseEntity<Long> rellenaBlogConFrase() {
        return ResponseEntity.ok(blogServiceRandomFrases.rellenaBlogConFrases());
    }

    @GetMapping("/{id}")
    public ResponseEntity<BlogEntity> get(@PathVariable Long id) {
        return ResponseEntity.ok(blogService.get(id));
    }

    @PostMapping("")
    public ResponseEntity<Long> create(@RequestBody BlogEntity blogEntity) {
        return ResponseEntity.ok(blogService.create(blogEntity));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Long> update(@PathVariable Long id, @RequestBody BlogEntity blogEntity) {
        return ResponseEntity.ok(blogService.update(id, blogEntity));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Long> delete(@PathVariable Long id) {
        return ResponseEntity.ok(blogService.delete(id));
    }
}
