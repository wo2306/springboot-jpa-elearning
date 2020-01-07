package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Userdb;

public interface UserdbRepository extends CrudRepository<Userdb, Long>{

	Userdb findByUserdbEmail(String userdbEmail);
}
