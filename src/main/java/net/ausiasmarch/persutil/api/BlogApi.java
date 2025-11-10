package net.ausiasmarch.persutil.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/blog")
public class BlogApi {

  @GetMapping("/saludar")
  public ResponseEntity<String> saludar() {
    return new ResponseEntity<>("Hola desde el blog", HttpStatus.OK);
  }

  @GetMapping("")
  public ResponseEntity<String> blog() {
    return new ResponseEntity<>("Página de blog", HttpStatus.OK);
  }
}
