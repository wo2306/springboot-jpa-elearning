package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.checkerframework.checker.units.qual.C;
import org.springframework.data.domain.Page;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import project.web.mvc.domain.Coupon;
import project.web.mvc.service.CouponService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/coupon")
public class CouponController {
    private final CouponService couponService;

    @RequestMapping("/insert")
    public String insert(Coupon coupon) throws ParseException {
        couponService.insert(coupon);
        return "redirect:/coupon/list/all/1";
    }

    @RequestMapping("/list/all/{pageNum}")
    public String selectAll(@PathVariable int pageNum, Model model) {
        List<Coupon> coupons = new ArrayList<>();
        Page<Coupon> page = couponService.selectAll(pageNum);
        page.iterator().forEachRemaining(coupons::add);
        model.addAttribute("couponList", coupons);
        model.addAttribute("page", page);
        model.addAttribute("command", "list");
        model.addAttribute("keyword", "all");
        return "admin/coupon/list";
    }

    @RequestMapping("/update")
    public String update(Coupon coupon) {
        couponService.update(coupon);
        return "redirect:/coupon/list/all/1";
    }

    @RequestMapping("/delete/{couponCode}")
    public String delete(@PathVariable String couponCode) {
        couponService.delete(couponCode);
        return "redirect:/coupon/list/all/1";
    }

    static int n = 16; // n자리 쿠폰
    static char[] chs = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

    public String createCoupon() {
        Random rd = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < n; i++) {
            char ch = chs[rd.nextInt(chs.length)];
            sb.append(ch);
        }
        return sb.toString();
    }

    @RequestMapping("/select/{couponCode}")
    @ResponseBody
    public Coupon getCoupon(@PathVariable String couponCode, Model model) {
        Coupon coupon = couponService.selectById(couponCode);
        model.addAttribute("coupon", coupon);
        return coupon;
    }
}
