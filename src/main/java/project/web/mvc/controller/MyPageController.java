package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage")
public class MyPageController {

    @RequestMapping("/info")
    public String myAccount() {
        return "myPage/info";
    }

}
