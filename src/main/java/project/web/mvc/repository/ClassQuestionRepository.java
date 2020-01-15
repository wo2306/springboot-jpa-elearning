package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import project.web.mvc.domain.ClassQuestion;

import java.util.List;

public interface ClassQuestionRepository extends CrudRepository<ClassQuestion, Long> {

    List<ClassQuestion> findTop10ByOrderByClassQuestionRegdateDesc();
    
    
    @Query("select c from ClassQuestion c inner join c.userdb u where u.userdbNo=?1")
    Page<ClassQuestion> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);
    
}
