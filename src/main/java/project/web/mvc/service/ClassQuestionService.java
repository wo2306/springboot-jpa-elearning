package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.ClassQuestion;

public interface ClassQuestionService {
	
		List<ClassQuestion> selectAll();
		
		void insert(ClassQuestion classQuestion);
		
		void update(ClassQuestion classQuestion);
		
		void delete(ClassQuestion classQuestion);
		
		

}
