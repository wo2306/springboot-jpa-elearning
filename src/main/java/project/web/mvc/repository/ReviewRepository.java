package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Review;

public interface ReviewRepository extends CrudRepository<Review, Integer> {

}
