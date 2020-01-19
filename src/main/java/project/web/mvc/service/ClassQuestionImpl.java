package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.ClassAnswer;
import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.repository.ClassAnswerRepository;
import project.web.mvc.repository.ClassQuestionRepository;
import project.web.mvc.util.LoginCheck;

@Service
@Transactional
public class ClassQuestionImpl implements ClassQuestionService {

	@Autowired
	private ClassQuestionRepository classQuestionRepo;
	@Autowired
	private ClassAnswerRepository classAnswerRepo;

	@Override
	public Page<ClassQuestion> selectAll(int pageNum) {
		
		return classQuestionRepo.findAll(PageRequest.of(pageNum-1, 9));
	}
	
	@Override
	public Page<ClassAnswer> selectAllAnswer(int pageNum) {
		
		return classAnswerRepo.findAll(PageRequest.of(pageNum-1, 9));
	}
	@Override
	public List<ClassQuestion> findAll() {

		return classQuestionRepo.findAllClassQuestions();
	}
	
	public List<ClassAnswer> findByQNo(Long id) {
		
		return classAnswerRepo.findByClassQuestionClassQuestionNo(id);
	}

	@Override
	public void insert(ClassQuestion classQuestion) {
		classQuestionRepo.save(classQuestion);

	}

	@Override
	public void deleteAnswer(Long classAnswerNo) {
		classAnswerRepo.deleteById(classAnswerNo);
		
	}
	@Override
	public void deleteQuestion(Long classQuestionNo) {
		classQuestionRepo.deleteById(classQuestionNo);
		
	}
	
	@Override
	public void updateAnswer(ClassAnswer classAnswer) {
		ClassAnswer dbAnswer = classAnswerRepo.findByClassAnswerNo(classAnswer.getClassAnswerNo());
		dbAnswer.setClassAnswerContent(classAnswer.getClassAnswerContent());
	}
	@Override
	public void updateQuestion(ClassQuestion classQuestion) {
		ClassQuestion dbQuestion = classQuestionRepo.findByClassQuestionNo(classQuestion.getClassQuestionNo());
		dbQuestion.setClassQuestionContent(classQuestion.getClassQuestionContent());
		dbQuestion.setClassQuestionTitle(classQuestion.getClassQuestionTitle());
		
		
	}

	@Override
	public ClassQuestion selectByQNo(Long id) {
		ClassQuestion question = classQuestionRepo.findById(id).orElse(null);
		return question;
	}
	
	@Override
	public ClassAnswer selectByAno(Long id) {
		ClassAnswer answer = classAnswerRepo.findById(id).orElse(null);
		
		return answer;
	}
	@Override
	public List<ClassAnswer> selectAnswerByQNo(Long id) {
		List<ClassAnswer> answerList = classAnswerRepo.findByClassQuestionClassQuestionNo(id);
		return answerList;
	}

	@Override
	public List<ClassQuestion> findRecentQ(Long onLectureNo) {
		return classQuestionRepo.findRecentQ(onLectureNo);
	}

	@Override
	public Page<ClassQuestion> selectByUserdbId(int pageNum) {
		return classQuestionRepo.findByUserdbUserdbNo(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum-1, 9));
	}

	//관리자 작성자 검색
	@Override
	public Page<ClassQuestion> selectByName(String keyword, int pageNum) {
		return classQuestionRepo.findByName(keyword, PageRequest.of(pageNum-1, 9));
	}
	//관리자 제목 검색
	@Override
	public Page<ClassQuestion> selectByTitle(String keyword, int pageNum) {
		return classQuestionRepo.findByTitle(keyword, PageRequest.of(pageNum-1, 9));
	}

}