package project.web.mvc.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.service.CartService;
import project.web.mvc.service.OrderService;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/order")
@RequiredArgsConstructor
public class OrderController {
    private final OrderService orderService;
    private final CartService cartService;


    @RequestMapping("/success")
    public String success() {
        return "payment/success";
    }

    @RequestMapping("/onInsert")
    public String onInsert(@RequestParam List<Integer> onLectureNo, @RequestParam String paymentId) {
        orderService.onInsert(onLectureNo, paymentId);
        cartService.deleteAll();
        return "payment/success";
    }

    @RequestMapping("/offInsert")
    public String offInsert(OffOrder offOrder) {
        orderService.offInsert(offOrder);
        return "payment/success";
    }
//select는 mypageController에 있음.
}
