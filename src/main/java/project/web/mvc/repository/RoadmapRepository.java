package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Roadmap;

public interface RoadmapRepository extends CrudRepository<Roadmap, Long> {
	
	@Query("select o from Roadmap o where o.roadmapNo in(select max(r.roadmapNo) from Roadmap r group by r.roadmapName)")
	List<Roadmap> findByRoadmapNameSelectAll();
	
	List<Roadmap> findByRoadmapName(String roadmapName);
	
	List<Roadmap> findTop3ByOnLecture_OnLectureNo(Long onLectureNo);
	
	@Modifying
	@Query("delete from Roadmap r where r.roadmapName=?1")
	void deleteByRoadmapName(String roadmapName);
	
	@Modifying
	@Query("delete from Roadmap r where r.roadmapNo=?1")
	void deleteByRoadmapNo(Long roadmapNo);
	
	
}
