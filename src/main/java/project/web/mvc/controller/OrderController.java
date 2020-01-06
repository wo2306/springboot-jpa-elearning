package project.web.mvc.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.service.OrderService;

import java.util.List;

@Controller
@RequestMapping("/order")
@RequiredArgsConstructor
public class OrderController {
    private final OrderService orderService;

    @RequestMapping("/checkout")
    public String checkout() {
        return "payment/checkout";
    }

    @RequestMapping("/success")
    public String success() {
        return "payment/success";
    }

    @RequestMapping("/info")
    public String myAccount() {
        return "myPage/info";
    }

    @RequestMapping("/onInsert")
    public String onInsert(OnOrder onOrder) {
        orderService.onInsert(onOrder);
        return "payment/success";
    }

    @ResponseBody
    @RequestMapping("/onSelect")
    public List<OnOrder> onSelect(int pageNum) {
        List<OnOrder> list = orderService.onSelect(pageNum);
        return list;
    }

    @RequestMapping("/offInsert")
    public String offInsert(OffOrder offOrder) {
        orderService.offInsert(offOrder);
        return "payment/success";
    }

    @RequestMapping("/offSelect")
    @ResponseBody
    public List<OffOrder> offSelect(int pageNum) {
        List<OffOrder> list = orderService.offSelect(pageNum);
        return list;
    }

}
