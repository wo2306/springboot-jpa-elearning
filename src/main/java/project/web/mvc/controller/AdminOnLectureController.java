package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OnLectureService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminOnLectureController {
    private final OnLectureService onLectureService;

    @RequestMapping("/onLecture/{command}/{keyword}/{pageNum}")
    public String category(@PathVariable String command, @PathVariable String keyword, @PathVariable int pageNum, Model model) {
        List<OnLecture> list = new ArrayList<>();
        Page<OnLecture> page = null;
        if (command.equals("category")) {
            page = onLectureService.selectByCategory(keyword, pageNum);
        } else {
            page = onLectureService.selectByKeyword("", pageNum);
        }
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("command", command);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        return "admin/onLecture/list";
    }


}

