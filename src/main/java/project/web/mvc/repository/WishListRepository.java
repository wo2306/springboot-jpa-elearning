package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Student;

public interface WishListRepository extends CrudRepository<Student, Integer>{

}
