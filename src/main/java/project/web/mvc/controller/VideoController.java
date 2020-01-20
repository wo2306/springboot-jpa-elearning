package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {

    @RequestMapping("/callback/video")
    public String code() {
        return "admin/onLecture/insertOnLecture";
    }
}
