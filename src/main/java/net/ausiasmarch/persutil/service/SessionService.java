package net.ausiasmarch.persutil.service;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ausiasmarch.persutil.bean.SessionBean;
import net.ausiasmarch.persutil.bean.TokenBean;
import net.ausiasmarch.persutil.exception.UnauthorizedException;


@Service
public class SessionService {

    private static final String ADMIN_USERNAME = "admin";
    private static final String ADMIN_PASSWORD_HASH = "7e4b4f5529e084ecafb996c891cfbd5b5284f5b00dc155c37bbb62a9f161a72e"; // ausias

    @Autowired
    private JWTService oJwtService;

    public TokenBean login(SessionBean oSessionBean) {
        // Soporta contraseña en texto plano o ya hasheada para mantener compatibilidad.
        if (ADMIN_USERNAME.equals(oSessionBean.getUsername()) && isValidAdminPassword(oSessionBean.getPassword())) {
            // generar el token JWT
            return (new TokenBean(oJwtService.generateJWT(oSessionBean.getUsername())));
        } else {
            throw new UnauthorizedException("Credenciales incorrectas");
        }
    }

    private boolean isValidAdminPassword(String password) {
        if (password == null || password.isBlank()) {
            return false;
        }

        if (ADMIN_PASSWORD_HASH.equalsIgnoreCase(password)) {
            return true;
        }

        return ADMIN_PASSWORD_HASH.equalsIgnoreCase(sha256(password));
    }

    private String sha256(String value) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hashBytes = digest.digest(value.getBytes(StandardCharsets.UTF_8));
            return toHex(hashBytes);
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 algorithm is not available", e);
        }
    }

    private String toHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder(bytes.length * 2);
        for (byte b : bytes) {
            sb.append(Character.forDigit((b >> 4) & 0xF, 16));
            sb.append(Character.forDigit(b & 0xF, 16));
        }
        return sb.toString();
    }

    public boolean isSessionActive() {
        String username = (String) org.springframework.web.context.request.RequestContextHolder.currentRequestAttributes()
                .getAttribute("username", org.springframework.web.context.request.RequestAttributes.SCOPE_REQUEST);
        return username != null;
    }

    public String getUsername() {
        String username = (String) org.springframework.web.context.request.RequestContextHolder.currentRequestAttributes()
                .getAttribute("username", org.springframework.web.context.request.RequestAttributes.SCOPE_REQUEST);
        return username;
    }

}
