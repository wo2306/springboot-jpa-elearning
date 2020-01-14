package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.service.OrderService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/onOrder")
public class AdminOrderController {
    private final OrderService orderService;

    @RequestMapping("/list/{pageNum}")
    public String selectAll(@PathVariable int pageNum, Model model) {
        List<OnOrder> list = new ArrayList<>();
        Page<OnOrder> onOrders = orderService.onSelectAll(pageNum);
        onOrders.iterator().forEachRemaining(list::add);
        if (!list.isEmpty()) {
            model.addAttribute("list", list);
            model.addAttribute("page", onOrders);
        }
        return "admin/order/salesHistory";
    }
}
