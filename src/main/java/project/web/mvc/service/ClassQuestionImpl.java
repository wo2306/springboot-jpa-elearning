package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.ClassQuestion;
import project.web.mvc.repository.ClassQuestionRepository;

@Service
public class ClassQuestionImpl implements ClassQuestionService {
	
	@Autowired
	private ClassQuestionRepository classQuestionRepo;
	
	@Override
	public List<ClassQuestion> selectAll() {
		System.out.println(Lists.newArrayList(classQuestionRepo.findAll()));
		return Lists.newArrayList(classQuestionRepo.findAll());
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
	@Transactional
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
	public List<ClassQuestion> findTop10ByOrderByClassQuestionRegdateDesc() {
		return classQuestionRepo.findTop10ByOrderByClassQuestionRegdateDesc();
	}
}
