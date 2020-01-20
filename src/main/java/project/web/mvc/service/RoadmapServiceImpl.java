package project.web.mvc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Roadmap;
import project.web.mvc.repository.RoadmapRepository;

@Service
@Transactional
public class RoadmapServiceImpl implements RoadmapService {
	
	@Autowired
	private RoadmapRepository roadmapRepo;
	
	@Override
	public void insert(List<Long> onLectureNo, Roadmap roadmap) {
		System.out.println("로드맵insert");
		for(int i=0; i< onLectureNo.size(); i++) {
			roadmap.setOnLecture(new OnLecture(onLectureNo.get(i)));
			roadmapRepo.save(new Roadmap(null, roadmap.getOnLecture(), roadmap.getRoadmapName(),roadmap.getRoadmapPrice(),roadmap.getRoadmapContent(),roadmap.getRoadmapRegdate()));
		}
	}

	@Override
	@Transactional
	public void update(String roadmapName, List<Long> onLectureNo, Roadmap roadmap) {
		List<Roadmap> roadmapList = roadmapRepo.findByRoadmapName(roadmapName);

		if (roadmapList.size() == onLectureNo.size()) { // 로드맵이 가지고 있는 강의수와 업데이트할 강의수가 같을때
			for (int i = 0; i < roadmapList.size(); i++) {
				//System.out.println(roadmapList.get(i).getRoadmapNo() + "기존 강의 번호!!@@");

				for (int k = 0; k < i + 1; k++) {
					//System.out.println(onLectureNo.get(k) + "업데이트할 강의번호!!");
					roadmapList.get(i).setOnLecture(new OnLecture(onLectureNo.get(k)));
				}
				roadmapList.get(i).setRoadmapNo(roadmapList.get(i).getRoadmapNo());
				roadmapList.get(i).setRoadmapName(roadmap.getRoadmapName());
				roadmapList.get(i).setRoadmapContent(roadmap.getRoadmapContent());
				roadmapList.get(i).setRoadmapPrice(roadmap.getRoadmapPrice());
				roadmapRepo.save(roadmapList.get(i));
			}
		} else if (roadmapList.size() < onLectureNo.size()) { // 로드맵이 가지고 있는 강의수보다 업데이트할 강의수가 많을때
			for (int i = 0; i < roadmapList.size(); i++) {
				//System.out.println(roadmapList.get(i).getRoadmapNo() + "기존 강의 번호!!@@");

				for (int k = 0; k < i + 1; k++) {
					//System.out.println(onLectureNo.get(k) + "업데이트할 강의번호!!");
					roadmapList.get(i).setOnLecture(new OnLecture(onLectureNo.get(k)));
				}
				roadmapList.get(i).setRoadmapNo(roadmapList.get(i).getRoadmapNo());
				roadmapList.get(i).setRoadmapName(roadmap.getRoadmapName());
				roadmapList.get(i).setRoadmapContent(roadmap.getRoadmapContent());
				roadmapList.get(i).setRoadmapPrice(roadmap.getRoadmapPrice());
				roadmapRepo.save(roadmapList.get(i));
			    }
			for(int a=roadmapList.size(); a< onLectureNo.size(); a++) {
				roadmap.setOnLecture(new OnLecture(onLectureNo.get(a)));
				roadmapRepo.save(new Roadmap(null, roadmap.getOnLecture(), roadmap.getRoadmapName(),roadmap.getRoadmapPrice(),roadmap.getRoadmapContent(),roadmap.getRoadmapRegdate()));
			}
		}else {
			// 로드맵이 가지고 있는 강의수보다 업데이트할 강의수가 작을때
			for(int d = onLectureNo.size(); d < roadmapList.size(); d++) {
				//System.out.println(roadmapList.get(onLectureNo.size()).getRoadmapNo()+"삭제할로드맵번호");
				roadmapRepo.deleteByRoadmapNo(roadmapList.get(onLectureNo.size()).getRoadmapNo());
			}
			for (int i = 0; i < onLectureNo.size(); i++) {
				//System.out.println(roadmapList.get(i).getRoadmapNo() + "기존 강의 번호!!@@");
				for (int k = 0; k <i+1; k++) {
					//System.out.println(onLectureNo.get(k) + "업데이트할 강의번호!!");
					roadmapList.get(i).setOnLecture(new OnLecture(onLectureNo.get(k)));
				}
				roadmapList.get(i).setRoadmapNo(roadmapList.get(i).getRoadmapNo());
				roadmapList.get(i).setRoadmapName(roadmap.getRoadmapName());
				roadmapList.get(i).setRoadmapContent(roadmap.getRoadmapContent());
				roadmapList.get(i).setRoadmapPrice(roadmap.getRoadmapPrice());
				roadmapRepo.save(roadmapList.get(i));
			    }		
			}
	}	
	@Override
	@Transactional
	public void delete(String roadmapName) {
		List<Roadmap> list =this.selectByName(roadmapName);
		for(int i=0; i<list.size(); i++) {
			roadmapRepo.deleteByRoadmapName(roadmapName);
		}

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

	@Override
	public List<Roadmap> selectByOnLectureNo(Long onLectureNo) {
		return roadmapRepo.findTop3ByOnLecture_OnLectureNo(onLectureNo);
	}
	

}
