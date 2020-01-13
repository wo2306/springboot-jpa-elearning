package project.web.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminOnLectureController {
    @RequestMapping("/onLecture")
    public String onLectureList() {

        return "admin/onLecture/list";
    }
}

