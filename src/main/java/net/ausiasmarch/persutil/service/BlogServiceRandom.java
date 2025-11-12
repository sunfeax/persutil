package net.ausiasmarch.persutil.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ausiasmarch.persutil.entity.BlogEntity;
import net.ausiasmarch.persutil.repository.BlogRepository;

@Service
public class BlogServiceRandom {

    @Autowired
    BlogRepository blogRepository;

    String[] palablogRepositoryas = { "hola", "adiós", "por favor", "gracias", "sí", "no", "agua", "comida", "sol",
            "noche", "día",
            "casa", "calle", "liblogRepositoryo", "mesa", "silla", "perro", "gato", "homblogRepositorye", "mujer",
            "niño", "niña", "grande",
            "pequeño", "amigo" };

    private String getRandomStr(int amount) {
        String str = "";

        for (int i = 0; i < amount; i++) {
            int randomIndex = (int) (Math.random() * palablogRepositoryas.length);
            str += palablogRepositoryas[randomIndex] + " ";
        }
        return str.trim();
    }

    public Long rellenaBlogAleatorio() {
        BlogEntity blogEntity = new BlogEntity();
        blogEntity.setTitulo(getRandomStr(5));
        blogEntity.setContenido(getRandomStr(15));
        blogEntity.setEtiquetas(getRandomStr(1) + ", " + getRandomStr(1));
        blogEntity.setFechaCreacion(LocalDateTime.now());
        blogEntity.setFechaModificacion(null);
        blogRepository.save(blogEntity);
        return blogRepository.count();
    }
}
