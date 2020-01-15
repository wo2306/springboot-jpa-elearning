package project.web.mvc.service;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.data.domain.Page;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.util.FileUtils;

public interface OffLectureService {

	void offLecInsert(OffLecture offLecture, HttpServletRequest request) throws Exception;
	
	void offLecUpdate(OffLecture offLecture);
	
	void offLecDelete(Long offLectureNo);
	
	Page<OffLecture> selectAll(int pageNum);
	List<OffLecture> selectAll();
	
	OffLecture selectByOffNo(Long offLectureNo);
	
	OffLecture findByOffLectureNo(Long offLectureNo);
	}
