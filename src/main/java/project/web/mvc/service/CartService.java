package project.web.mvc.service;

import project.web.mvc.domain.Cart;

import java.util.List;

public interface CartService {
    List<Cart> selectAll();

    void insert(Cart dto);

    void delete(Long cartNo);

    void deleteAll();
}
