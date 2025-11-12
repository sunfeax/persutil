package net.ausiasmarch.persutil.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ausiasmarch.persutil.entity.BlogEntity;
import net.ausiasmarch.persutil.repository.BlogRepository;

@Service
public class BlogServiceRandomFrases {

    @Autowired
    BlogRepository br;

    @Autowired
    AleatorioService as;

    List<String> frases = new ArrayList<>();

    public void AddFrases() {
        frases.add("El futuro es nuestro.");
        frases.add("Sueña sin límites.");
        frases.add("La felicidad está en las cosas simples.");
        frases.add("Hoy es un buen día para empezar.");
        frases.add("Cree en ti mismo.");
        frases.add("Todo pasa por una razón.");
        frases.add("Sé la mejor versión de ti mismo.");
        frases.add("Atrévete a vivir.");
        frases.add("La magia está en los pequeños detalles.");
        frases.add("Respira y sigue adelante.");
        frases.add("Nunca es tarde para un nuevo comienzo.");
        frases.add("Tu actitud lo cambia todo.");
        frases.add("Siempre hay tiempo para sonreír.");
        frases.add("Hoy voy a hacer algo increíble.");
        frases.add("Menos perfección, más autenticidad.");
        frases.add("Cada día es una nueva oportunidad.");
        frases.add("Haz más de lo que te hace feliz.");
        frases.add("Vive el momento presente.");
        frases.add("Donde hay voluntad, hay un camino.");
        frases.add("La vida es un viaje, no un destino.");
    }

    public String AddContenido() {
        String contenido = "";

        for (int i = 0; i < 3; i++) {
            contenido += frases.get(as.generateRandomNum(frases.size() - 1, 0)) + "\n";
        }
        return contenido;
    }

    public String AddEtiquetas() {
        String etiquetas = "";

        for (int i = 0; i < 3; i++) {
            etiquetas += frases.get(as.generateRandomNum(frases.size() - 1, 0)) + " ";
        }
        return etiquetas.trim();
    }

    public Long rellenaBlogConFrases() {
        if (frases.isEmpty()) {
            AddFrases();
        }

        BlogEntity be = new BlogEntity();

        be.setTitulo(frases.get(as.generateRandomNum(frases.size() - 1, 0)));
        be.setContenido(AddContenido());
        be.setEtiquetas("etiqueta1, etiqueta2");
        be.setFechaCreacion(LocalDateTime.now());
        be.setFechaModificacion(null);
        br.save(be);

        return br.count();
    }
}
