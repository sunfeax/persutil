package net.ausiasmarch.persutil.service;

import org.springframework.stereotype.Service;

@Service
public class AleatorioService {

    public int generateRandomNum(int max, int min) {
        return (int) (Math.random() * (max - min + 1)) + min;
    }
}
