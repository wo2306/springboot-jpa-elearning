package project.web.mvc.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Review;

public interface ReviewRepository extends CrudRepository<Review, Long> {


	//@Query("select r from Review r inner join r.onLecture o where o.onLectureNo=?1")
	List<Review> findByOnLectureOnLectureNo(Long onLectureNo);
			
	Page<Review> findAll(Pageable pageable);
	@Query("select r from Review r inner join r.userdb u where u.userdbNo=?1")
	Page<Review> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);
	
	Review findByReviewNo(Long reviewNo);
}
