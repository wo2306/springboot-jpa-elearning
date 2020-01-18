package project.web.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import project.web.mvc.domain.Review;
import project.web.mvc.repository.ReviewRepository;
import project.web.mvc.util.LoginCheck;

import javax.transaction.Transactional;

@Service
@Transactional
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewRepository reviewRepo;
	
	
	@Override
	public Page<Review> selectByUserId(int pageNum) {
		return reviewRepo.findByUserdbUserdbNo(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum-1, 9));
	}
	
	@Override
	public List<Review> selectByOnlectureNo(Long onLectureNo) {
		List<Review> list = new ArrayList<>();
		reviewRepo.findByOnLectureOnLectureNo(onLectureNo).iterator().forEachRemaining(list::add);;
		
		return list;
	}
	
	@Override
	public void insert(Review review) {
		
	}

	@Override
	public void update(Review review) {
		Review dbReview = reviewRepo.findByReviewNo(review.getReviewNo());
		dbReview.setReviewContent(review.getReviewContent());

	}
	
	@Override
	public Review selectById(Long reviewNo) {
		return reviewRepo.findByReviewNo(reviewNo);
	}

	@Override
	public void delete(Long reviewNo) {
		reviewRepo.deleteById(reviewNo);

	}

	@Override
	public List<Review> selectAll() {
		
		return null;
	}

	@Override
	public Page<Review> findAll(int pageNum) {
		
		return reviewRepo.findAll(PageRequest.of(pageNum-1, 9));
	}



}
