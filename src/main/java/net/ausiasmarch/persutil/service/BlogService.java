package net.ausiasmarch.persutil.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ausiasmarch.persutil.entity.BlogEntity;
import net.ausiasmarch.persutil.repository.BlogRepository;

@Service
public class BlogService {

    @Autowired
    BlogRepository blogRepository;

    public Long rellenaBlog() {
        BlogEntity blogEntity = new BlogEntity();
        blogEntity.setTitulo("Mi primer blog");
        blogEntity.setContenido("Contenido del blog");
        blogEntity.setEtiquetas("etiqueta1, etiqueta2");
        blogEntity.setFechaCreacion(LocalDateTime.now());
        blogEntity.setFechaModificacion(null);
        blogRepository.save(blogEntity);
        return blogRepository.count();
    }

    public BlogEntity get(Long id) {
        return blogRepository.findById(id).orElseThrow(() -> new RuntimeException("Error"));
    }

    public Long create(BlogEntity blogEntity) {
        blogEntity.setFechaCreacion(LocalDateTime.now());
        blogEntity.setFechaModificacion(null);
        blogRepository.save(blogEntity);
        return blogEntity.getId();
    }
}
