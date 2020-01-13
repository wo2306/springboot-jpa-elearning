package project.web.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import project.web.mvc.domain.Review;
import project.web.mvc.repository.ReviewRepository;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewRepository reviewRepo;
	
	
	@Override
	public void insert(Review review) {
		
	}

	@Override
	public void update(Review review) {
		

	}

	@Override
	public void delete(Long reviewNo) {
		

	}

	@Override
	public List<Review> selectAll() {
		
		return null;
	}

	@Override
	public List<Review> selectByOnlectureNo(int pageNum, Long onLectureNo) {
		List<Review> list = new ArrayList<>();
		Pageable pageable= PageRequest.of(pageNum, 10);
		
		//임의로 onLectureNo=500으로 테스트
		Long tempOnLectureNo = 500L;
		
		reviewRepo.findByOnLectureOnLectureNo(tempOnLectureNo, pageable).iterator().forEachRemaining(list::add);
		return list;
	}

	@Override
	public List<Review> selectByUserId(int pageNum, Long userdbNo) {
		List<Review> list = new ArrayList<>();
		Pageable pageable= PageRequest.of(pageNum, 10);
		
		//임의 userdbNo=501L로 테스트
		Long tempUserdbNo=502L;
		
		reviewRepo.findByUserdbUserdbNo(tempUserdbNo, pageable).iterator().forEachRemaining(list::add);
		return list;
	}

}
