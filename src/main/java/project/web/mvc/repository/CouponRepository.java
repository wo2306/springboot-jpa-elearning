package project.web.mvc.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.Coupon;

public interface CouponRepository extends PagingAndSortingRepository<Coupon, String> {

}
