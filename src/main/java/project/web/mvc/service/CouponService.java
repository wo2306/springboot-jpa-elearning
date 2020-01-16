package project.web.mvc.service;

import org.springframework.data.domain.Page;
import project.web.mvc.domain.Coupon;

public interface CouponService {

    void insert(Coupon coupon);

    Page<Coupon> selectAll(int pageNum);

    void update(Coupon coupon);

    void delete(String couponCode);
}
