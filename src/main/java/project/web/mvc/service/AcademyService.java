package project.web.mvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;

import project.web.mvc.domain.Academy;
import project.web.mvc.domain.OffLecture;


public interface AcademyService {
	
	void academyInsert(Academy academy);
	
	List<Academy> selectAll();
	
	void academyUpdate(Academy academy);
	
	void academyDelete(Long academyNo);
	
	Academy selectByAno(Long academyNo);
	
	Academy findByAcademyNo(Long academyNo);
	
	List<Academy> selectByacademyeName(String academyName);
	List<Academy> selectByCity(String city);
	List<Academy> selectByAddress(String address);
}
