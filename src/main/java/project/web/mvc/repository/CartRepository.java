package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import project.web.mvc.domain.Cart;

import java.util.List;

public interface CartRepository extends CrudRepository<Cart, Long> {

    @Query("select c from Cart c inner join c.userdb u where u.userdbNo=?1")
    List<Cart> findByUserdbNo(Long userdbNo);

    @Modifying
    void deleteByUserdbUserdbNo(Long userdbNo);

    @Query("select c from Cart c inner join c.userdb u inner join c.onLecture o where u.userdbNo=?1 and o.onLectureNo=?2")
    List<Cart> findByUserdbUserdbNoAndOnLecture_OnLectureNo(Long userdbNo, Long onLectureNo);

    List<Cart> findByUserdbUserdbEmail(String userdbEmail);
}
