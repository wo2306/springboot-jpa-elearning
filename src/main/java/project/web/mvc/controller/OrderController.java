package project.web.mvc.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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


    @RequestMapping("/success")
    public String success() {
        return "payment/success";
    }

    @RequestMapping("/onInsert")
    public String onInsert(OnOrder onOrder) {
        orderService.onInsert(onOrder);
        return "payment/success";
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
