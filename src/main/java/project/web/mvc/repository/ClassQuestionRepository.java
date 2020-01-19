package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import project.web.mvc.domain.ClassQuestion;

public interface ClassQuestionRepository extends PagingAndSortingRepository<ClassQuestion, Long> {

    @Query("select c from ClassQuestion c where c.onLecture.onLectureNo=?1 order by c.classQuestionRegdate desc")
    List<ClassQuestion> findRecentQ(Long onLectureNo);
   
   @Query("select c from ClassQuestion c")
    List<ClassQuestion> findAllClassQuestions();   
   
    Page<ClassQuestion> findAll(Pageable pageable);
    
    @Query("select c from ClassQuestion c inner join c.userdb u where u.userdbNo=?1")
    Page<ClassQuestion> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);
    
    ClassQuestion findByClassQuestionNo(Long classQuestionNo);
    
    @Query("select q from ClassQuestion q where q.classQuestionTitle LIKE CONCAT('%',:keyword,'%')")
    Page<ClassQuestion> findByTitle(String keyword, Pageable pageable);
    
    @Query("select c from ClassQuestion c inner join c.userdb u where u.userdbNo LIKE CONCAT('%',:keyword,'%')")
    Page<ClassQuestion> findByName(String keyword, Pageable pageable);
    
    
}
