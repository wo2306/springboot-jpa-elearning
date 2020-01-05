package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Userdb;

public interface WishListRepository extends CrudRepository<Userdb, Integer>{

}
