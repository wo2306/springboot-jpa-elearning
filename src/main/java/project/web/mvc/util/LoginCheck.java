package project.web.mvc.util;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import project.web.mvc.domain.Userdb;
@Service
public class LoginCheck {
    public static Userdb getUserdb() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            Userdb userdb = (Userdb) authentication.getPrincipal();
            return userdb;
        }
        return null;
    }
}