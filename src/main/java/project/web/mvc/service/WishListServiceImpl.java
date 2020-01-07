package project.web.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.Userdb;
import project.web.mvc.domain.WishList;
import project.web.mvc.repository.WishListRepository;

@Service
@RequiredArgsConstructor
public class WishListServiceImpl implements WishListService {

	@Autowired
	private final WishListRepository wishlistRepo;
	
	@Override
	public WishList wishlistInsert(Long userdbNo, Long onLectureNo) {
		
		OnLecture onlecture = wishlistRepo.findOnlectureByNo(onLectureNo);
		Userdb userdb = wishlistRepo.findUserdbByNo(userdbNo);
		
		WishList wishlist = wishlistRepo.save(new WishList(1L, onlecture, userdb));
		return wishlist;
	}
	
//	@Override
//	public List<WishList> wishlistselectAll(int pageNum) {
//		List<WishList> list = new ArrayList<>();
//        Pageable pageable = PageRequest.of(pageNum, 10);
////        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//    
//        wishlistRepo.findAll(pageable).iterator().forEachRemaining(list::add);
//
//        return list;
//	}
	
	@Override
	public List<WishList> wishlistselectAll(Long userdbNo) {
       
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    
        List<WishList> list = wishlistRepo.findByUserdb(userdbNo);

        return list;
	}
	
	@Override
	public void wishlistDelete(Long wishListNo) {
		
		wishlistRepo.deleteById(wishListNo);
		
		
	}
}
