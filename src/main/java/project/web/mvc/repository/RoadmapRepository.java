package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Roadmap;

public interface RoadmapRepository extends CrudRepository<Roadmap, Long> {
	
	@Query("select o from Roadmap o where o.roadmapNo in(select min(r.roadmapNo) from Roadmap r group by r.roadmapName)")
	List<Roadmap> findByRoadmapNameSelectAll();
	
	List<Roadmap> findByRoadmapName(String roadmapName);
	
}
