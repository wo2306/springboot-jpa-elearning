package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.service.OrderService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminOrderController {
    private final OrderService orderService;

    @RequestMapping("/onOrder/{keyfield}/{keyword}/{pageNum}")
    public String select(@PathVariable String keyfield, @PathVariable String keyword, @PathVariable int pageNum, Model model) {
        List<OnOrder> list = new ArrayList<>();
        Page<OnOrder> onOrders = null;
        if (keyfield.equals("list")) {
            onOrders = orderService.onSelectAll(pageNum);
        } else if (keyfield.equals("code")) {
            onOrders = orderService.onSelectById(pageNum, keyword);
        } else if (keyfield.equals("lecture")) {
            onOrders = orderService.onSelectByLectureName(pageNum, keyword);
        }
        onOrders.iterator().forEachRemaining(list::add);
        if (!list.isEmpty()) {
            model.addAttribute("list", list);
            model.addAttribute("page", onOrders);
        }
        return "admin/order/salesHistory";
    }



    @RequestMapping("/offOrder/{keyfield}/{keyword}/{pageNum}")
    public String offselect(@PathVariable String keyfield, @PathVariable String keyword, @PathVariable int pageNum, Model model) {
        List<OffOrder> list = new ArrayList<>();
        Page<OffOrder> offOrders = null;
        if (keyfield.equals("list")) {
            offOrders = orderService.offSelect(pageNum);
        } else if (keyfield.equals("lecture")) {
            offOrders = orderService.offSelectByLectureName(pageNum, keyword);
        } else if (keyfield.equals("id")) {
            offOrders = orderService.offSelectByUserEmail(pageNum, keyword);
        }
        offOrders.iterator().forEachRemaining(list::add);
        if (!list.isEmpty()) {
            model.addAttribute("list", list);
            model.addAttribute("page", offOrders);
        }
        return "admin/order/offSalesHistory";
    }
}
