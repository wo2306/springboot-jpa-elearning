package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {

    @RequestMapping("oauth2callback")
    public String token(String code, Model model, String access_token) {
        model.addAttribute("code", code);
        System.out.println("token : " + access_token);
        return "admin/onLecture/insertOnLecture";
    }
}
