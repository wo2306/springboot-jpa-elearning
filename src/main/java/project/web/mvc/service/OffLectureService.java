package project.web.mvc.service;


import java.util.List;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.domain.OnLecture;

public interface OffLectureService {

	void offLecInsert(OffLecture offLecture);
	
	void offLecUpdate(OffLecture offLecture);
	
	void offLecDelete(Long offLectureNo);
	
	Page<OffLecture> selectAll(int pageNum);
	List<OffLecture> selectAll();
	
	OffLecture selectByOffNo(Long offLectureNo);
	
	OffLecture findByOffLectureNo(Long offLectureNo);
	
	List<OffLecture> selectByDate();
	
	 Page<OffLecture> findByoffLectureName(String keyword, Pageable pageable);
	 Page<OffLecture> selectByKeyword(String keyword, int pageNum);
	 Page<OffLecture> selectByCategory(String category, int pageNum);
	 Page<OffLecture> selectByTeacherName(String keyword, int pageNum);
	 Page<OffLecture> selectByoffLectureName(String keyword, int pageNum);
	}
