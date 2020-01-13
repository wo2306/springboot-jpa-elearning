package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;
import project.web.mvc.domain.ClassQuestion;

import java.util.List;

public interface ClassQuestionRepository extends CrudRepository<ClassQuestion, Long> {

    List<ClassQuestion> findTop10ByOrderByClassQuestionRegdateDesc();
}
