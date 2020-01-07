package project.web.mvc.service;


import java.util.List;

import project.web.mvc.domain.OffLecture;

public interface OffLectureService {
	
	void offLecInsert(OffLecture offLecture);
	
	void offLecUpdate(OffLecture offLecture);
	
	void offLecDelete(int offLectureNo);
	
	List<OffLecture> selectAll();
	
	OffLecture selectByOffNo(Long offLectureNo);
}
