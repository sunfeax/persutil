package net.ausiasmarch.persutil.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import net.ausiasmarch.persutil.entity.UskiVisitasEntity;
import net.ausiasmarch.persutil.repository.UskiVisitasRepository;

@Service
public class UskiVisitasService {

    @Autowired
    UskiVisitasRepository oUskiVisitasRepository;

    public UskiVisitasEntity get(Long id) {
        if (id == null)
            throw new RuntimeException("Id no puede ser nulo");

        return oUskiVisitasRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Libro de visitas not found"));
    }

    public Long create(UskiVisitasEntity visitasEntity) {
        visitasEntity.setFechaCreacion(LocalDateTime.now());
        visitasEntity.setFechaModificacion(null);
        visitasEntity.setEstaPublicado(false);
        oUskiVisitasRepository.save(visitasEntity);
        return visitasEntity.getId();
    }

    public Long update(UskiVisitasEntity visitasEntity) {
        UskiVisitasEntity existingRegistro = oUskiVisitasRepository.findById(visitasEntity.getId())
                .orElseThrow(() -> new RuntimeException("Libro de visitas not found"));

        boolean nuevoEstado = !existingRegistro.isEstaPublicado();
        existingRegistro.setEstaPublicado(nuevoEstado);
        existingRegistro.setFechaModificacion(LocalDateTime.now());
        oUskiVisitasRepository.save(existingRegistro);
        return existingRegistro.getId();
    }

    public Long delete(Long id) {
        if (id == null)
            throw new RuntimeException("Id no puede ser nulo");

        oUskiVisitasRepository.deleteById(id);
        return id;
    }

    public Page<UskiVisitasEntity> getPage(Pageable oPageable) {
        if (oPageable == null)
            throw new RuntimeException("Page no puede ser nulo");

        return oUskiVisitasRepository.findAll(oPageable);
    }

    public Page<UskiVisitasEntity> getPublishedPage(Pageable oPageable) {
        if (oPageable == null)
            throw new RuntimeException("Page no puede ser nulo");

        return oUskiVisitasRepository.findByEstaPublicadoTrue(oPageable);
    }

    public Long count() {
        return oUskiVisitasRepository.count();
    }
}
