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
@RequestMapping("/myPage")
@RequiredArgsConstructor
public class MyPageController {
    private final OrderService orderService;

    @RequestMapping("/info")//onOrderSelect
    public void onSelect(Integer pageNum, Model model) {
        List<OnOrder> list = orderService.onSelect(pageNum == null ? 0 : pageNum);
        if (!list.isEmpty())
            model.addAttribute("list", list);
    }

    @RequestMapping("/offSelect")
    @ResponseBody
    public List<OffOrder> offSelect(Integer pageNum, Model model) {
        List<OffOrder> list = orderService.offSelect(pageNum == null ? 0 : pageNum);
        return list;
}
}

