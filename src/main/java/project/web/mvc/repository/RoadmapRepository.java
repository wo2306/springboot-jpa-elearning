package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Roadmap;

public interface RoadmapRepository extends CrudRepository<Roadmap, Long> {

}
