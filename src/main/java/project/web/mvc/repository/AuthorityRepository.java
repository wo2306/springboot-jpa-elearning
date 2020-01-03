package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Authority;

public interface AuthorityRepository extends CrudRepository<Authority, Integer> {

}
