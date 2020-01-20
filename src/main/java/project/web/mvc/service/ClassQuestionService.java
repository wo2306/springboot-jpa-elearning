package project.web.mvc.service;

import org.checkerframework.checker.units.qual.C;
import org.springframework.data.domain.Page;

import project.web.mvc.domain.ClassAnswer;
import project.web.mvc.domain.ClassQuestion;

import java.util.List;

public interface ClassQuestionService {
	//관리자 페이지 questionList all 페이징처리
    Page<ClassQuestion> selectAll(int pageNum);
    
    //관리자 페이지 answerList all 페이징 처리
    Page<ClassAnswer> selectAllAnswer(int pageNum);
    
    List<ClassQuestion> findAll();
    
    public List<ClassAnswer> findByQNo(Long id);
    
    void insert(ClassQuestion classQuestion);

    void answerInsert(ClassAnswer classAnswer);
    void updateQuestion(ClassQuestion classQuestion);
    void updateAnswer(ClassAnswer classAnswer);
    
    
    void deleteQuestion(Long classQuestion);
    void deleteAnswer(Long classAnswerNo);
    
    ClassQuestion selectByQNo(Long id);

    List<ClassQuestion> findRecentQ(Long onLectureNo);
    ClassAnswer selectByAno(Long id);
    
    List<ClassAnswer> selectAnswerByQNo(Long id);
    //유저별 질문 리스트 (마이페이지에서 사용)
    Page<ClassQuestion> selectByUserdbId(int pageNum);
    
    //관리자 페이지 검색 (작성자검색)
    Page<ClassQuestion> selectByName(String keyword, int pageNum);
    //관리자 페이지 검색 (질문제목검색)
    Page<ClassQuestion> selectByTitle(String keyword, int pageNum);
    
}