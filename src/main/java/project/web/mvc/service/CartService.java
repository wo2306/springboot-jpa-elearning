package project.web.mvc.service;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import project.web.mvc.domain.Cart;

import java.util.List;

public interface CartService {
    List<Cart> selectAll();

    void insert(Cart dto);

    void update(Cart dto);

    void delete(Long cartNo);


}
