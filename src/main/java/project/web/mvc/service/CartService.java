package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.Cart;

public interface CartService {
    List<Cart> selectAll();

    void insert(Cart dto);

    void update(Cart dto);

    void delete(Long cartNo);


}
