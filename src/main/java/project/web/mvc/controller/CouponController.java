package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import project.web.mvc.domain.Coupon;
import project.web.mvc.service.CouponService;

@Controller
@RequiredArgsConstructor
@RequestMapping("coupon")
public class CouponController {
    private final CouponService couponService;

    @RequestMapping("/insert")
    public String insert(Coupon coupon) {
        couponService.insert(coupon);
//        return "admin/coupon/;
        return "";
    }
//
//    @RequestMapping("/select/{pageNum}")
//    public String selectAll()
//        d

}
