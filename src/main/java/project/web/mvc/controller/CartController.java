package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import project.web.mvc.domain.Cart;
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

    @RequestMapping("/list")
    public String list(Model model) {
        List<Cart> list = cartService.selectAll();
        if (!list.isEmpty())
            model.addAttribute("cartList", list);
        return "payment/cart";
    }

    @RequestMapping("/insert")
    public String insert(Cart cart) {
        cartService.insert(cart);
        return "redirect:/cart/list";
    }

    @RequestMapping("/delete/{cartNo}")
    public String update(@PathVariable Long cartNo) {
        System.out.println(cartNo);
        cartService.delete(cartNo);
        return "redirect:/cart/list";
    }
}

