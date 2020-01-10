package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Review;

public interface ReviewRepository extends CrudRepository<Review, Long> {
	
	//select * from review where onLectureNo=?
	Page<Review> findByOnLectureOnLectureNo(Long onLectureNo, Pageable pageable); 
	
	//select * from review where userdbNo=?
	Page<Review> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);
	

}
