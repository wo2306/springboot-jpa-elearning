package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import project.web.mvc.domain.Cart;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.service.CartService;

import java.util.List;

@Controller
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartController {
    private final CartService cartService;
//    private final UserService userService;

    @RequestMapping("/checkout")
    public String checkout(Model model) {
        List<Cart> list = cartService.selectAll();
        if (!list.isEmpty())
            model.addAttribute("cartList", list);
        return "payment/checkout";
    }

    @RequestMapping("/ajaxList")
    @ResponseBody
    public List<Cart> ajaxList() {
        System.out.println("ajaxList call()");
        return cartService.selectAll();
    }

    //카트 삽입 없음.

    @RequestMapping("/list")
    public String list(Model model) {
        List<Cart> list = cartService.selectAll();
        if (!list.isEmpty())
            model.addAttribute("cartList", list);
        return "payment/cart";
    }

    @RequestMapping("/insert/{onLectureNo}")
    @ResponseBody
    public int insert(@PathVariable Long onLectureNo) {
        System.out.println(onLectureNo);
        cartService.insert(onLectureNo);
        return 0;
    }

    @RequestMapping("/delete/{cartNo}")
    @ResponseBody
    public int delete(@PathVariable Long cartNo) {
        cartService.delete(cartNo);
        return 0;
    }

    @RequestMapping("/deleteCart/{cartNo}")
    public String deleteCart(@PathVariable Long cartNo) {
        cartService.delete(cartNo);
        return "redirect:/cart/list";
    }
}
