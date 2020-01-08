package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Authority;

public interface AuthorityRepository extends CrudRepository<Authority, Long> {

	List<Authority> findByUserdbUserdbNo(Long userdbNo);
	
}
