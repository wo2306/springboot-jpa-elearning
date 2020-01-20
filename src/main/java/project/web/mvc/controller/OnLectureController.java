package project.web.mvc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.Review;
import project.web.mvc.domain.WishList;
import project.web.mvc.service.*;

@Controller
@RequestMapping("/onLecture")
@RequiredArgsConstructor
public class OnLectureController {
    private final OnLectureService onLectureService;
    private final OrderService orderService;
    private final SugangService sugangService;
    private final ReviewService reviewService;
    private final ClassQuestionService qnaService;
    private final OnDetailService onDetailService;
    private final WishListService wishlistService;
    private final RoadmapService roadmapService;

    @RequestMapping("/list/{pageNUm}")
    public String list(Model model, @PathVariable int pageNum) {
        List<OnLecture> list = new ArrayList<>();
        Page<OnLecture> page = onLectureService.selectAll(pageNum);
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("page", page);
        return "onLecture/list";
    }

    @RequestMapping("/detail/{onLectureNo}")
    public String detail(@PathVariable Long onLectureNo, Model model) {
        List<OnDetail> list = onLectureService.selectById(onLectureNo);
        OnLecture onLecture = list.get(0).getOnLecture();
        System.out.println(onLecture);
        List<OnLecture> teachers = onLectureService.selectByTeacher(onLecture.getOnLectureTeacher());
        List<Review> reviewList = reviewService.selectByOnlectureNo(onLectureNo);
        model.addAttribute("teacherList", teachers);
        model.addAttribute("detailList", list);
        model.addAttribute("onLecture", onLecture);
        System.out.println("온라인강의별 리뷰 리스트 : " +reviewList.toString());
        model.addAttribute("reviewList", reviewList);

        if (orderService.payCheck(onLectureNo)) {
            model.addAttribute("qnaList", qnaService.findRecentQ(onLectureNo));
            model.addAttribute("sugangList", sugangService.sugangList(onLectureNo));
            return "onLecture/dashboard";
        }
        return "onLecture/detail";
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

    @RequestMapping("/search/{command}/{keyword}/{pageNum}")
    public String category(@PathVariable String command, @PathVariable String keyword, @PathVariable int pageNum, Model model) {
        List<OnLecture> list = new ArrayList<>();
        Page<OnLecture> page = null;
        Map<Long,Long> heartMap = new TreeMap<Long, Long>();
        if (command.equals("category")) {
            page = onLectureService.selectByCategory(keyword, pageNum);
        } else {
            page = onLectureService.selectByKeyword(keyword, pageNum);
        }
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("command", command);
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", page);
        return "onLecture/list";
    }

    @RequestMapping("/latest")
    @ResponseBody
    public List<OnLecture> latestList() {
        return onLectureService.selectLatest();
    }

    @RequestMapping("/count")
    @ResponseBody
    public List<Long> count() {
        return onLectureService.countCategory();
    }


}
