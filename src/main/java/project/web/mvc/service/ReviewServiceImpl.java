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

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewRepository reviewRepo;
	
	
	@Override
	public Page<Review> selectByUserId(int pageNum) {
		return reviewRepo.findByUserdbUserdbNo(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum-1, 9));
	}
	
	@Override
	public Page<Review> selectByOnlectureNo(int pageNum) {
	
		return reviewRepo.findByOnLectureOnLectureNo(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum-1, 9));
	}
	
	@Override
	public void insert(Review review) {
		
	}

	@Override
	public void update(Review review) {
		

	}

	@Override
	public void delete(Long reviewNo) {
		reviewRepo.deleteById(reviewNo);

	}

	@Override
	public List<Review> selectAll() {
		
		return null;
	}




}
