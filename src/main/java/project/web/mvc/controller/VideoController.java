package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {

    @RequestMapping("oauth2callback")
    public String token(String code, Model model) {
        model.addAttribute("code", code);
        return "admin/onLecture/insertOnLecture";
    }
}
