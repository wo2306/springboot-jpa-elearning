package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.OnLecture;

public interface OnLectureService {

	void insert(OnLecture onLecture);
	
	List<OnLecture> selectAll();
}
