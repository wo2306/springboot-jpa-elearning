package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.OrderService;
import project.web.mvc.service.UserdbService;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminHomeController {

    private final OnLectureService onLectureService;
    private final UserdbService userdbService;
    private final AuthorityService authorityService;
    private final OrderService orderService;


    @RequestMapping("")
    public String main(Model model) {
        System.out.println("어드민컨트롤러호출");
        List<Long> list = onLectureService.countCategory();
        model.addAttribute("monthRevenue", orderService.findDate());
        //월별매출액 구해오기
        model.addAttribute("list", list);
        return "admin/adminIndex";
    }


}