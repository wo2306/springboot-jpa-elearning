package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.Roadmap;

public interface RoadmapService {
	void insert(Roadmap roadmap);
	void update(Roadmap roadmap);
	void delete(Long roadmapNo);
	Roadmap selectById(Long roadmapNo);
	List<Roadmap> selectByName(String roadmapName);
	List<Roadmap> selectAll();
	
}
