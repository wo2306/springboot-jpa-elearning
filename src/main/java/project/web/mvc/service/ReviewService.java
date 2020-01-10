package project.web.mvc.service;

import java.util.List;

import project.web.mvc.domain.Review;

public interface ReviewService {
	
	void insert(Review review);
	
	void update(Review review);
	
	void delete(Long reviewNo);
	
	//리스트 전체 
	//쓸일 없을거 같음
	List<Review> selectAll();
	
	//강의별 리뷰 리스트 보기
	List<Review> selectByOnlectureNo(int pageNum, Long onLectureNo);

	//유저별 리뷰 리스트 보기(마이페이지)
	List<Review> selectByUserId(int pageNum, Long userdbNo);
	

}
