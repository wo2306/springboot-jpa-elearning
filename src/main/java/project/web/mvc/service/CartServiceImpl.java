package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.Cart;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.CartRepository;
import project.web.mvc.util.LoginCheck;
import sun.rmi.runtime.Log;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;

    @Override
    public void deleteAll() {
        cartRepository.deleteByUserdbUserdbNo(LoginCheck.getUserdb().getUserdbNo());
    }

    @Override
    public List<Cart> selectAll() {
        List<Cart> list = new ArrayList<>();
        if (LoginCheck.getUserdb()!=null)
        cartRepository.findByUserdbNo(LoginCheck.getUserdb().getUserdbNo()).iterator().forEachRemaining(list::add);
        return list;
    }

    @Override
    @Transactional
    public void insert(Long onLectureNo) {
        Userdb userdb = LoginCheck.getUserdb();
        if (userdb==null) {
            throw new RuntimeException("로그인 후 이용해주세요");
        }
        if (cartRepository.findByUserdbNoAndOnLectureNo(userdb.getUserdbNo(), onLectureNo).size()!=0) {
            throw new RuntimeException("이미 장바구니에 같은 상품이 담겨있습니다.");
        }
        cartRepository.save(new Cart(onLectureNo, userdb.getUserdbNo()));
    }

    @Override
    public void delete(Long cartNo) {
        cartRepository.deleteById(cartNo);
    }
}
