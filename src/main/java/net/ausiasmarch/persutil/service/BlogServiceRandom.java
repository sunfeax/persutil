package net.ausiasmarch.persutil.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ausiasmarch.persutil.entity.BlogEntity;
import net.ausiasmarch.persutil.repository.BlogRepository;

@Service
public class BlogServiceRandom {

    @Autowired
    BlogRepository br;

    String[] palabras = {"hola", "adiós", "por favor", "gracias", "sí", "no", "agua", "comida", "sol", "noche", "día", "casa", "calle", "libro", "mesa", "silla", "perro", "gato", "hombre", "mujer", "niño", "niña", "grande", "pequeño", "amigo"};

    public String getRandomStr(int amount) {
        String str = "";

        for (int i = 0; i < amount; i++) {
            int randomIndex = (int) (Math.random() * palabras.length);
            str += palabras[randomIndex] + " ";
        }
        return str.trim();
    }

    public Long rellenaBlogAleatorio() {
        BlogEntity be = new BlogEntity();
        be.setTitulo(getRandomStr(5));
        be.setContenido(getRandomStr(15));
        be.setEtiquetas(getRandomStr(1) + ", " + getRandomStr(1));
        be.setFechaCreacion(LocalDateTime.now());
        be.setFechaModificacion(null);
        br.save(be);
        return br.count();
    }
}