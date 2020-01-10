package project.web.mvc.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.service.CartService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.OrderService;

import java.util.List;

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
    public String cartInsert(@RequestParam List<Long> onLectureNo, OnOrder onOrder) {
        orderService.cartInsert(onLectureNo, onOrder);
        cartService.deleteAll();
        return "payment/success";
    }

    @RequestMapping("/onInsert")
    public String onInsert1(@RequestParam Long onLectureNo, OnOrder onOrder) {
        orderService.onInsert(onLectureNo, onOrder);
        return "payment/success";
    }

    @RequestMapping("/offInsert")
    public String offInsert(OffOrder offOrder) {
        orderService.offInsert(offOrder);
        return "payment/success";
    }

    @RequestMapping("/buynow/{onLectureNo}")
    public String buyNow(@PathVariable Long onLectureNo, Model model) {
        System.out.println("onLectureNo = " + onLectureNo);
        model.addAttribute("onLecture", onLectureService.selectOnLectureById(onLectureNo));
        return "payment/buynow";
    }

//select는 mypageController에 있음.
}
