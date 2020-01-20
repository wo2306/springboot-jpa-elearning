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
import project.web.mvc.util.LoginCheck;

@Service
@RequiredArgsConstructor
@Transactional
public class WishListServiceImpl implements WishListService {

	@Autowired
	private final WishListRepository wishlistRepo;
	
	@Override
	@Transactional
	public int wishlistInsert(Long onLectureNo) {
	
		//userdb에서 userdbNo 빼서 집어넣기
	   Userdb userdb = LoginCheck.getUserdb();
       Long userdbNo = LoginCheck.getUserdb().getUserdbNo();
       if (userdb==null) {
           return 1;
       }
       
		if (wishlistRepo.findByUserdbUserdbNoAndOnLectureOnLectureNo(userdbNo, onLectureNo).size()!=0) {

            return 2;
        }
        
        else{
        	wishlistRepo.save(new WishList(onLectureNo, userdbNo));
        	
        	return 0;
        }
	}
	
	
	@Override
	public List<WishList> wishlistselectAll() {
		List<WishList> list = new ArrayList<>();
      //userdb에서 userdbNo 빼서 집어넣기
		Long userdbNo = LoginCheck.getUserdb().getUserdbNo();
	       
		wishlistRepo.findByUserdbUserdbNo(userdbNo).iterator().forEachRemaining(list::add);
        return list;
	}
	
	@Transactional
	@Override
	public void wishlistDelete(Long wishListNo) {
		wishlistRepo.deleteById(wishListNo);
		
	}
}
