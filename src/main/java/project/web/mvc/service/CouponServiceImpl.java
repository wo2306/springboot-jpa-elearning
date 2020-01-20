package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.Coupon;
import project.web.mvc.repository.CouponRepository;

import javax.transaction.Transactional;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

@Service
@RequiredArgsConstructor
@Transactional
public class CouponServiceImpl implements CouponService {
    private final CouponRepository couponRepository;

    @Override
    public Coupon selectById(String couponCode) {
        Coupon coupon = couponRepository.findById(couponCode).orElse(null);
        if (coupon == null) {
            throw new RuntimeException("해당하는 쿠폰 번호가 없습니다.");
        }
        if (coupon.getCouponRemainingCount() == 0) {
            throw new RuntimeException("쿠폰 갯수가 전부 소진되었습니다");
        }
        return coupon;
    }


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
        couponRepository.save(coupon);
    }
}
