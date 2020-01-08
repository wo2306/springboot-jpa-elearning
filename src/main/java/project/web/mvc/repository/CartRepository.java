package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.Cart;

import java.util.List;

public interface CartRepository extends CrudRepository<Cart, Long> {

    List<Cart> findByUserdbUserdbEmail(String userdbEmail);

    @Modifying
    void deleteByUserdbUserdbNo(Long userdbUserdbNo);

    Cart findByOnLectureOnLectureNo(Long onLecture);
}
