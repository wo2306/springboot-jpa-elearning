package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.ClassAnswer;
import project.web.mvc.domain.ClassQuestion;

public interface ClassAnswerRepository extends CrudRepository<ClassAnswer, Long> {

    List<ClassAnswer> findByClassQuestionClassQuestionNo(Long classQuestionNo);

}