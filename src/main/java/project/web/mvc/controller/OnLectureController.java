package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.OnLectureService;
import project.web.mvc.service.OrderService;
import project.web.mvc.service.SugangService;

import java.util.List;

@Controller
@RequestMapping("/onLecture")
@RequiredArgsConstructor
public class OnLectureController {
    private final OnLectureService onLectureService;
    private final OrderService orderService;
    private final SugangService sugangService;

    @RequestMapping("")
    public String main() {
    	return "redirect:onLecture/list";
    }
    
    @RequestMapping("/list")
    public String list(Model model) {
        List<OnLecture> list = onLectureService.selectAll();
        model.addAttribute("list", list);
        return "onLecture/list";
    }

    @RequestMapping("/detail/{onLectureNo}")
    public String detail(@PathVariable Long onLectureNo, Model model) {
        List<OnDetail> list = onLectureService.selectById(onLectureNo);
        model.addAttribute("detailList", list);
        model.addAttribute("onLecture", list.get(0).getOnLecture());
        if (orderService.payCheck(onLectureNo)) {
            model.addAttribute("sugangList", sugangService.sugangList(onLectureNo));
            return "onLecture/dashboard";
        }
        return "onLecture/detail";
    }

    @RequestMapping("/insert")
    public String insert(OnLecture onLecture) {
        onLectureService.insert(onLecture);
        return "redirect:onLecture/list";
    }

    @RequestMapping("/delete/{onLectureNo}")
    public String delete(@PathVariable Long onLectureNo) {
        onLectureService.delete(onLectureNo);
        return "redirect:onLecture/list";
    }

    @RequestMapping("/update")
    public String update() {
        OnLecture onLecture = new OnLecture();
        onLecture.setOnLectureNo(502L);
        onLectureService.update(onLecture);
        return "redirect:onLecture/list";
    }

    @RequestMapping("/view/{onDetailNo}")
    public String view(@PathVariable Long onDetailNo, Model model) {
        OnDetail onDetail = onLectureService.selectOnDetailById(onDetailNo);
        Long onLectureNo = onDetail.getOnLecture().getOnLectureNo();
        List<OnDetail> list = onLectureService.selectById(onLectureNo);
        model.addAttribute("onDetail", onDetail);
        model.addAttribute("onDetailList", list);
        int index = list.indexOf(onDetail);
        int prevNo = -1, nextNo = -1;
        if (index > 0) {
            prevNo = (int) (long) list.get(index - 1).getOnDetailNo();
        }
        if (index < list.size() - 1) {
            nextNo = (int) (long) list.get(index + 1).getOnDetailNo();
        }
        sugangService.insert(onLectureNo, onDetailNo);
        model.addAttribute("prevNo", prevNo);
        model.addAttribute("nextNo", nextNo);
        return "onLecture/video/view";
    }
}
