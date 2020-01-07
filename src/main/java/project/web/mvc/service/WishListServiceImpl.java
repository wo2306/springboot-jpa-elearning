package project.web.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.WishList;
import project.web.mvc.repository.WishListRepository;

@Service
@RequiredArgsConstructor
public class WishListServiceImpl implements WishListService {

	@Autowired
	private final WishListRepository wishlistRepo;
	
	@Override
	public void wishlistInsert(Long userdbNo, Long onLectureNo) {
		
		//wishlist에 insert하기 - onlectureNo
		wishlistRepo.findById(onLectureNo);
		//로그인되어있으면 key에서 studentNo insert
		
		//wishlistRepo.save(new WishList(1L, onlecture, userdbNo));
	}
	
	@Override
	public List<WishList> wishlistselectAll() {
	 
		return Lists.newArrayList(wishlistRepo.findAll());
	}
	
	@Override
	public void wishlistDelete(Long wishListNo) {
		
		wishlistRepo.deleteWishlistByNo(wishListNo);
		
		
	}
}
