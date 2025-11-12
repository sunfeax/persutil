package net.ausiasmarch.persutil.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    AleatorioService as;

    @Autowired
    BlogService bs;

    @Autowired
    BlogServiceRandom bsr;

    @Autowired
    BlogServiceRandomFrases bsrf;

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
        return ResponseEntity.ok(as.generateRandomNum(max, min));
    }

    @GetMapping("/rellenauno")
    public ResponseEntity<Long> rellenaBlog() {
        return ResponseEntity.ok(bs.rellenaBlog());
    }

    @GetMapping("/rellena_aleatorio")
    public ResponseEntity<Long> rellenaBlogAleatorio() {
        return ResponseEntity.ok(bsr.rellenaBlogAleatorio());
    }

    @GetMapping("/rellena_frase")
    public ResponseEntity<Long> rellenaBlogConFrase() {
        return ResponseEntity.ok(bsrf.rellenaBlogConFrases());
    }

    @GetMapping("/{id}")
    public ResponseEntity<BlogEntity> get(@PathVariable Long id) {
        return ResponseEntity.ok(bs.get(id));
    }
}
