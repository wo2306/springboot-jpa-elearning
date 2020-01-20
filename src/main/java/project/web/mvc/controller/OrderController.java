package project.web.mvc.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.service.CartService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.OrderService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/order")
@RequiredArgsConstructor
public class OrderController {
    private final OrderService orderService;
    private final CartService cartService;
    private final OnLectureService onLectureService;


    @RequestMapping("/success")
    public String success() {
        return "payment/success";
    }

    @RequestMapping("/cartInsert")
    public String cartInsert(HttpServletRequest request, OnOrder onOrder) {
        String[] onLectureNoList = request.getParameterValues("onLectureNo");
        Long[] list = new Long[onLectureNoList.length];
        for (int i = 0; i < onLectureNoList.length; i++) {
            list[i] = Long.parseLong(onLectureNoList[i]);
        }
        orderService.cartInsert(list, onOrder);
        cartService.deleteAll();
        return "payment/success";
    }

    @RequestMapping("/onInsert")
    public String onInsert1(@RequestParam Long onLectureNo, OnOrder onOrder, String couponCode) {
        orderService.onInsert(onLectureNo, onOrder, couponCode);
        return "payment/success";
    }

    @RequestMapping("/offInsert/{offLectureNo}")
    public String offInsert(@PathVariable Long offLectureNo) {
        orderService.offInsert(offLectureNo);
        return "payment/success";
    }

    @RequestMapping("/buynow/{onLectureNo}")
    public String buyNow(@PathVariable Long onLectureNo, Model model) {
        System.out.println("onLectureNo = " + onLectureNo);
        model.addAttribute("onLecture", onLectureService.selectOnLectureById(onLectureNo));
        return "payment/buynow";
    }

}
