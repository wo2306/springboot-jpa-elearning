package project.web.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;

import project.web.mvc.domain.Review;

public interface ReviewService {
	
	void insert(Review review);
	
	void update(Review review);
	
	void delete(Long reviewNo);
	
	//리스트 전체 
	//쓸일 없을거 같음
	List<Review> selectAll();
	
	//유저별 리뷰 리스트 (마이페이지에서 사용)
	Page<Review> selectByUserId(int pageNum);
	
	//강의별 리뷰 리스트 (온라인강의페이지에서 사용)
	Page<Review> selectByOnlectureNo(int pageNum);

}
