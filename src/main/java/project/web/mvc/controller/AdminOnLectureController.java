package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import oracle.jdbc.proxy.annotation.Post;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OnDetailService;
import project.web.mvc.service.OnLectureService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/onLecture")
public class AdminOnLectureController {
    private final OnLectureService onLectureService;
    private final OnDetailService onDetailService;

    @PostMapping("/insert")
    public String insert(OnLecture onLecture, MultipartFile thumbnail, HttpServletRequest request) {
        try {
            onLectureService.insert(onLecture);
            //실제 root 경로를 가져오기
            String path = request.getSession().getServletContext().getRealPath("/resources/images/onLecture/");
            //첨부된 파일 이름 가져오기
            thumbnail.transferTo(new File(path + onLecture.getOnLectureNo()+".png")); //폴더에 저장완료
            String[] detailNames = request.getParameterValues("onDetailName");
            String[] videoLength = request.getParameterValues("videoLength");
            String[] detailUrl = request.getParameterValues("detailUrl");
            for (int i = 0; i < detailNames.length; i++) {
                onDetailService.insert(new OnDetail(null, onLecture, detailUrl[i], detailNames[i], videoLength[i]));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:all/keyword/1";
    }



    @RequestMapping("/delete/{onLectureNo}")
    public String delete(@PathVariable Long onLectureNo, HttpServletRequest request) {
        onDetailService.deleteByOnLectureNo(onLectureNo);
        new File(request.getSession().getServletContext().getRealPath("/resources/images/onLecture/") + onLectureNo + ".png").delete();
        onLectureService.delete(onLectureNo);
        return "redirect:/admin/onLecture/all/keyword/1";
    }

    @RequestMapping("/update")
    public String update(OnLecture onLecture) {
        onLectureService.update(onLecture);
        return "redirect:all/keyword/1";
    }


    @RequestMapping("/{command}/{keyword}/{pageNum}")
    public String category(@PathVariable String command, @PathVariable String keyword,
                           @PathVariable int pageNum, Model model) {
        List<OnLecture> list = new ArrayList<>();
        Page<OnLecture> page = null;
        if (command.equals("all")) {
            page = onLectureService.selectByKeyword("", pageNum);
        } else if (command.equals("category")) {
            page = onLectureService.selectByCategory(keyword, pageNum);
        } else if (command.equals("teacher")) {
            page = onLectureService.selectByTeacherName(keyword, pageNum);
        } else if (command.equals("name")) {
            page = onLectureService.selectByonLectureName(keyword, pageNum);
        }
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("keyword", keyword);
        model.addAttribute("command", command);
        model.addAttribute("page", page);
        return "admin/onLecture/list";
    }

    @RequestMapping("/updateForm/{onLectureNo}")
    public String updateForm(@PathVariable Long onLectureNo, Model model) {
        List<OnDetail> list = onLectureService.selectById(onLectureNo);
        model.addAttribute("list", list);
        model.addAttribute("onLecture", list.get(0).getOnLecture());
        return "admin/onLecture/updateOnLecture";
    }
}

