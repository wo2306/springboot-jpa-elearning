package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Cart;

public interface CartRepository extends CrudRepository<Cart, Long> {

}
