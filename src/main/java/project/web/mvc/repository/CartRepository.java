package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;
import project.web.mvc.domain.Cart;

import java.util.List;

public interface CartRepository extends CrudRepository<Cart, Long> {

    List<Cart> findByUserdbUserdbEmail(String userdbEmail);
}
