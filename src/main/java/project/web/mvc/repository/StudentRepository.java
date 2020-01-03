package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.WishList;

public interface StudentRepository extends CrudRepository<WishList, Integer>{

}
