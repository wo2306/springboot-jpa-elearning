package project.web.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import project.web.mvc.repository.WishListRepository;

@Service
@RequiredArgsConstructor
public class WishListServiceImpl implements WishListService {

	@Autowired
	private final WishListRepository wishlistRepo;
	
	@Override
	public void wishlistInsert(Long studentNo, Long onLectureNo) {
		
		//wishlist에 insert하기 
		//wishlistRepo.save(new WishList(1, onLectureNo, studentNo));
	}
}
