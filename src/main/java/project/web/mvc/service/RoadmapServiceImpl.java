package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.web.mvc.domain.Roadmap;
import project.web.mvc.repository.RoadmapRepository;

@Service
public class RoadmapServiceImpl implements RoadmapService {
	
	@Autowired
	private RoadmapRepository roadmapRepo;
	
	@Override
	public void insert(Roadmap roadmap) {
		System.out.println("로드맵insert");
		Roadmap result =roadmapRepo.save(roadmap);
		System.out.println(result.getRoadmapName()+"@@");
		System.out.println(result.getRoadmapContent()+"@@");
		System.out.println(result.getRoadmapRegdate()+"@@");
	}

	@Override
	public void update(Roadmap roadmap) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int roadmapNo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Roadmap> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
