package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Roadmap;
import project.web.mvc.repository.RoadmapRepository;

@Service
public class RoadmapServiceImpl implements RoadmapService {
	
	@Autowired
	private RoadmapRepository roadmapRepo;
	
	@Override
	public void insert(List<Long> onLectureNo, Roadmap roadmap) {
		System.out.println("로드맵insert");
		for(int i=0; i< onLectureNo.size(); i++) {
			roadmap.setOnLecture(new OnLecture(onLectureNo.get(i)));
			roadmapRepo.save(roadmap);
		}

		
	}

	@Override
	public void update(Roadmap roadmap) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Long roadmapNo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Roadmap> selectAll() {
		List<Roadmap> list = Lists.newArrayList(roadmapRepo.findByRoadmapNameSelectAll());
		return list;
	}

	@Override
	public Roadmap selectById(Long roadmapNo) {
			
		return roadmapRepo.findById(roadmapNo).orElse(null);
	}

	@Override
	public List<Roadmap> selectByName(String roadmapName) {
		
		return roadmapRepo.findByRoadmapName(roadmapName);
		
	}

}
