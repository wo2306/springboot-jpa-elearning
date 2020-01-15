package project.web.mvc.service;

import org.checkerframework.checker.units.qual.C;
import org.springframework.data.domain.Page;

import project.web.mvc.domain.ClassQuestion;

import java.util.List;

public interface ClassQuestionService {

    List<ClassQuestion> selectAll();

    void insert(ClassQuestion classQuestion);

    void update(ClassQuestion classQuestion);

    void delete(ClassQuestion classQuestion);

    ClassQuestion selectByQNo(Long id);

    List<ClassQuestion> findTop10ByOrderByClassQuestionRegdateDesc();
    
    //유저별 질문 리스트 (마이페이지에서 사용)
    Page<ClassQuestion> selectByUserdbId(int pageNum);
}
