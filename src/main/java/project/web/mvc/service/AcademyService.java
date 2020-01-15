package project.web.mvc.service;

import java.util.List;
import java.util.Optional;

import project.web.mvc.domain.Academy;


public interface AcademyService {
	
	void academyInsert(Academy academy);
	
	List<Academy> selectAll();
	
	void academyUpdate(Academy academy);
	
	void academyDelete(Long academyNo);
	
	Academy selectByAno(Long academyNo);
	
	Academy findByAcademyNo(Long academyNo);
}
