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
	public List<ClassQuestion> findAll() {

		return classQuestionRepo.findAllClassQuestions();
	}

	@Override
	public void insert(ClassQuestion classQuestion) {
		classQuestionRepo.save(classQuestion);

	}

	@Override
	public void update(ClassQuestion classQuestion) {
		ClassQuestion dbQuestion = classQuestionRepo.findById(classQuestion.getClassQuestionNo()).orElse(null);
		//db 검증(회원 인증해주고)
		dbQuestion.setClassQuestionContent(classQuestion.getClassQuestionContent());
		dbQuestion.setClassQuestionTitle(classQuestion.getClassQuestionTitle());

	}

	@Override
	public void delete(ClassQuestion classQuestion) {

		ClassQuestion dbQuestion = classQuestionRepo.findById(classQuestion.getClassQuestionNo()).orElse(null);
		//update와 같이 db검증(회원 인증)하고
		classQuestionRepo.delete(dbQuestion);
	}

	@Override
	public ClassQuestion selectByQNo(Long id) {
		ClassQuestion question = classQuestionRepo.findById(id).orElse(null);
		return question;
	}

	@Override
	public List<ClassAnswer> selectAnswerByQNo(Long id) {
		List<ClassAnswer> answerList = classAnswerRepo.findByClassQuestionClassQuestionNo(id);
		System.out.println("퀘스천 "+answerList);
		return answerList;
	}

	@Override
	public List<ClassQuestion> findTop10ByOrderByClassQuestionRegdateDesc() {
		return classQuestionRepo.findTop10ByOrderByClassQuestionRegdateDesc();
	}

	@Override
	public Page<ClassQuestion> selectByUserdbId(int pageNum) {
		return classQuestionRepo.findByUserdbUserdbNo(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum-1, 9));
	}




}