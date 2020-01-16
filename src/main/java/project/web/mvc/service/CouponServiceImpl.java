package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.Coupon;
import project.web.mvc.repository.CouponRepository;

@Service
@RequiredArgsConstructor
public class CouponServiceImpl implements CouponService {
    private final CouponRepository couponRepository;

    @Override
    public void insert(Coupon coupon) {
        couponRepository.save(coupon);
    }
}
