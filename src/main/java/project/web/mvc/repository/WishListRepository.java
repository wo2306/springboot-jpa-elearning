package project.web.mvc.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.WishList;

public interface WishListRepository extends CrudRepository<WishList, Long>{


	@Query("select lec from OnLecture lec where lec.onLectureNo =?1")
	public OnLecture findOnlectureByNo(Long onLectureNo);
	
	 
//	@Modifying
//	@Transactional
//	@Query("delete from WishList wl where wl.onLectureNo =?1")
//	public void deleteOnlectureByNo(Long onLectureNo);
}
