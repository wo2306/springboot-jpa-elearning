package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import project.web.mvc.domain.ClassQuestion;

public interface ClassQuestionRepository extends PagingAndSortingRepository<ClassQuestion, Long> {

    List<ClassQuestion> findTop10ByOrderByClassQuestionRegdateDesc();
   
   @Query("select c from ClassQuestion c")
    List<ClassQuestion> findAllClassQuestions();   
   
    Page<ClassQuestion> findAll(Pageable pageable);
    
    @Query("select c from ClassQuestion c inner join c.userdb u where u.userdbNo=?1")
    Page<ClassQuestion> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);
    
    ClassQuestion findByClassQuestionNo(Long classQuestionNo);
    
}
