package project.web.mvc.service;

import java.util.List;

import org.springframework.data.domain.Page;

import project.web.mvc.domain.Review;

public interface ReviewService {
	
	void insert(Review review);
	
	void update(Review review);
	
	void delete(Long reviewNo);
	
	Review selectById(Long reviewNo);
	
	//리스트 전체 (사용안함)
	List<Review> selectAll();
	
	//유저별 리뷰 리스트 (마이페이지에서 사용)
	Page<Review> selectByUserId(int pageNum);
	
	//강의별 리뷰 리스트 (온라인강의페이지에서 사용)
	List<Review> selectByOnlectureNo(Long onLectureNo);
	
	//리스트전체 관리자용
	Page<Review> findAll(int pageNum);
	
	//관리자 작성자별 검색
	Page<Review> findByUser(String keyword, int pageNum);
}
