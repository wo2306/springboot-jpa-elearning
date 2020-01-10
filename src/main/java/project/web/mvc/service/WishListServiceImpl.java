package project.web.mvc.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
	@Transactional
	public void wishlistInsert(Long onLectureNo) {
		
//      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//      auth.isAuthenticated().
//      String userdbEmail = auth.getName();
//      auth.getPrincipal().getUserdbUserdbNo();
		//Userdb userdb = wishlistRepo.findUserdbByNo(userdbNo);
//       Long userNo = auth.getPrincipal().getUserdbUserdbNo()
      
		if (wishlistRepo.findByOnLectureOnLectureNo(onLectureNo)!=null) {
            System.out.println("null입니다.");
            throw new RuntimeException("이미 중복된 강의가 존재합니다.");
        };
		OnLecture onlecture = wishlistRepo.findOnlectureByNo(onLectureNo);

		System.out.println("onLectureNo : " + onLectureNo + "/" + onlecture);
		wishlistRepo.save(new WishList(onLectureNo, 1L));
	}
	
//	@Override
//	public List<WishList> wishlistselectAll(int pageNum) {
//		System.out.println("서비스도 진입");
//		List<WishList> list = new ArrayList<>();
//        Pageable pageable = PageRequest.of(pageNum, 10);
////        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        Long userdbNo = 1L;
//        wishlistRepo.findByUserdbUserdbNo(userdbNo, pageable).iterator().forEachRemaining(list::add);
//
//        return list;
//	}
	
	@Override
	public List<WishList> wishlistselectAll() {
		List<WishList> list = new ArrayList<>();
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Long userdbNo = 1L;
		wishlistRepo.findByUserdbUserdbNo(userdbNo).iterator().forEachRemaining(list::add);
        return list;
	}
	
	@Transactional
	@Override
	public void wishlistDelete(Long wishListNo) {
		wishlistRepo.deleteById(wishListNo);
		
	}
}
