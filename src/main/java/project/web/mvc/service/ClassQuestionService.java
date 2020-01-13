package project.web.mvc.service;

import org.checkerframework.checker.units.qual.C;
import project.web.mvc.domain.ClassQuestion;

import java.util.List;

public interface ClassQuestionService {

    List<ClassQuestion> selectAll();

    void insert(ClassQuestion classQuestion);

    void update(ClassQuestion classQuestion);

    void delete(ClassQuestion classQuestion);

    ClassQuestion selectByQNo(Long id);

    List<ClassQuestion> findTop10ByOrderByClassQuestionRegdateDesc();

}
