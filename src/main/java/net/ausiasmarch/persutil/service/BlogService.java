package net.ausiasmarch.persutil.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ausiasmarch.persutil.entity.BlogEntity;
import net.ausiasmarch.persutil.repository.BlogRepository;

@Service
public class BlogService {

    @Autowired
    BlogRepository br;

    public Long rellenaBlog() {
        BlogEntity be = new BlogEntity();
        be.setTitulo("Mi primer blog");
        be.setContenido("Contenido del blog");
        be.setEtiquetas("etiqueta1, etiqueta2");
        be.setFechaCreacion(LocalDateTime.now());
        be.setFechaModificacion(null);
        br.save(be);
        return br.count();
    }

    public BlogEntity get(Long id) {
        return br.findById(id).orElseThrow(() -> new RuntimeException("Error"));
    }
}
