package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.Coupon;
import project.web.mvc.domain.OnLecture;

public interface CouponRepository extends PagingAndSortingRepository<Coupon, String> {

}
