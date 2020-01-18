package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import project.web.mvc.domain.*;
import project.web.mvc.service.*;
import project.web.mvc.util.LoginCheck;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/myPage")
@RequiredArgsConstructor
public class MyPageController {
    private final OrderService orderService;
    private final WishListService wishlistService;
    private final UserdbService userdbService;
    private final ReviewService reviewService;
    private final ClassQuestionService classQuestionService;
    private final SugangService sugangService;

    @RequestMapping("/info/{pageNum}")
    public String onSelect(@PathVariable Integer pageNum, Model model) {
        List<OnOrder> orderList = new ArrayList<>();
        Page<OnOrder> orderPage = orderService.onSelect(pageNum);
        orderService.onSelect(pageNum).iterator().forEachRemaining(orderList::add);

        if (!orderList.isEmpty()) {
            model.addAttribute("orderList", orderList);
            model.addAttribute("orderPage", orderPage);
        }

        List<Review> reviewList = new ArrayList<>();
        Page<Review> reviewPage = reviewService.selectByUserId(pageNum);
        reviewService.selectByUserId(pageNum).iterator().forEachRemaining(reviewList::add);

        if (!reviewList.isEmpty()) {
            model.addAttribute("reviewList", reviewList);
            model.addAttribute("reviewPage", reviewPage);
        }

        List<ClassQuestion> questionList = new ArrayList<>();
        Page<ClassQuestion> questionPage = classQuestionService.selectByUserdbId(pageNum);
        classQuestionService.selectByUserdbId(pageNum).iterator().forEachRemaining(questionList::add);

        if (!questionList.isEmpty()) {
            model.addAttribute("questionList", questionList);
            model.addAttribute("questionPage", questionPage);
        }

        List<OffOrder> offOrders = new ArrayList<>();
        Page<OffOrder> offOrderPage = orderService.offSelectByUserdbNo(pageNum);
        offOrderPage.iterator().forEachRemaining(offOrders::add);
        if (!offOrders.isEmpty()) {
            model.addAttribute("offOrderList", offOrders);
            model.addAttribute("offOrderPage", offOrderPage);
        }
        return "myPage/info";
    }

    @RequestMapping("/myLecture/{pageNum}")
    public String myLectureSelect(@PathVariable int pageNum, Model model) {
        List<OnOrder> list = new ArrayList<>();
        Page<OnOrder> page = orderService.onSelectByUserNo(pageNum);
        page.iterator().forEachRemaining(list::add);
        model.addAttribute("list", list);
        model.addAttribute("page", page);
        return "myPage/myLecture";
    }

    @RequestMapping("/offSelect")
    @ResponseBody
    public List<OffOrder> offSelect(Integer pageNum, Model model) {
        List<OffOrder> list = new ArrayList<>();
        orderService.offSelect(pageNum == null ? 1 : pageNum).iterator().forEachRemaining(list::add);
        return list;
    }

    @RequestMapping("/orderBy/{command}/{pageNum}")
    public String orderby(@PathVariable int command, @PathVariable int pageNum, Model model) {
        List<Sugang> list = new ArrayList<>();
        Page<Sugang> page = null;
        if (command == 1) {
            page = sugangService.selectByUserNoOrderByRegdate(pageNum);
        } else if (command == 2) {
            page = sugangService.selectBySugangState(pageNum, true);
        } else {
            page = sugangService.selectBySugangState(pageNum, false);
        }
        model.addAttribute("list", list);
        model.addAttribute("page", page);
        page.iterator().forEachRemaining(list::add);
        return "myPage/myLecture";
    }

    @RequestMapping("/info/wishlisttab")
    @ResponseBody
    public List<WishList> wishlisttab(Model model) {
        System.out.println("콘트롤러 인");
        List<WishList> list = wishlistService.wishlistselectAll();

        if (!list.isEmpty())
            model.addAttribute("list", list);

        return list;
    }

    @RequestMapping(value = "/isthere")
    @ResponseBody
    public List<WishList> isthere() {
        return wishlistService.wishlistselectAll();

    }

    @DeleteMapping(value = "/delete")
    @ResponseBody
    public void delete(Long wishListNo) {
        System.out.println("wishListNo : " + wishListNo);
        wishlistService.wishlistDelete(wishListNo);

    }
    @RequestMapping(value ="/myAccount")
    public ModelAndView myAccount() {
        System.out.println("마이페이지의 마이어카운트 호출");
        Long userdbNo = LoginCheck.getUserdb().getUserdbNo();
        Userdb item = userdbService.selectByUserdbNo(userdbNo);
        return new ModelAndView("myPage/myAccount", "item", item);
    }

    @RequestMapping(value ="/myAccount/passwordCheck")
    @ResponseBody
    public int passwordCheck(String userdbPassword0) {
        //true = 비밀번호 일치, false = 비밀번호 불일치
        //true : 0, false : 1
        System.out.println("패스워드체크컨트롤러**********************************");
        int result = (userdbService.checkPassword(userdbPassword0))? 0 : 1;
        System.out.println("패스워드체크컨트롤러22222*********************************");
        return result;
    }

    //nickname 변경
    @RequestMapping(value ="/myAccount/nickUpdate")
    @ResponseBody
    public void nickUpdate(String userdbNickname) {
        System.out.println("나왓니????"+userdbNickname);
        userdbService.updateNickname(userdbNickname);
        System.out.println("닉네임 수정성공!!!");
        System.out.println(LoginCheck.getUserdb().getUserdbNickname());
    }

    //password 변경
    @RequestMapping(value ="/myAccount/pwUpdate")
    @ResponseBody
    public int pwUpdate(String userdbPassword1) {
        userdbService.updatePw(userdbPassword1);
        //0: 성공, 1:오류
        return 0;
    }


}

