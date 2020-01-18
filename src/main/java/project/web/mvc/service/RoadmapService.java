package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.Roadmap;

public interface RoadmapService {
	void insert(List<Long> onLectureNo, Roadmap roadmap);
	void update(String roadmapName, List<Long> onLectureNo, Roadmap roadmap);
	void delete(String roadmapName);
	Roadmap selectById(Long roadmapNo);
	List<Roadmap> selectByName(String roadmapName);
	List<Roadmap> selectAll();
	
}
