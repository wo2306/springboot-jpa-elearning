package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.Coupon;
import project.web.mvc.repository.CouponRepository;

import javax.transaction.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class CouponServiceImpl implements CouponService {
    private final CouponRepository couponRepository;

    @Override
    public void delete(String couponCode) {
        couponRepository.deleteById(couponCode);
    }

    @Override
    public void update(Coupon coupon) {
        couponRepository.save(coupon);
    }

    @Override
    public Page<Coupon> selectAll(int pageNum) {
        return couponRepository.findAll(PageRequest.of(pageNum - 1, 9));
    }

    @Override
    public void insert(Coupon coupon) {
        if (couponRepository.existsById(coupon.getCouponCode())) {
            throw new RuntimeException("중복된 쿠폰 번호가 존재합니다");
        }
        couponRepository.save(coupon);
    }
}
