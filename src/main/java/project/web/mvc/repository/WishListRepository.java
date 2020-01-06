package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.Userdb;
import project.web.mvc.domain.WishList;

public interface WishListRepository extends CrudRepository<WishList, Integer>{


//	@Modifying
//	@Query(insert into wishlist wish values wishListNo =?1, onLecture=?2, userdb=?3)
}
