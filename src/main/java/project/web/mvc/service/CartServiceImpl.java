package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.Cart;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.CartRepository;
import project.web.mvc.util.LoginCheck;

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
        cartRepository.findByUserdbNo(LoginCheck.getUserdb().getUserdbNo()).iterator().forEachRemaining(list::add);
        return list;
    }

    @Override
    @Transactional
    public void insert(Long onLectureNo) {
        if (cartRepository.findByUserdbUserdbNoAndOnLecture_OnLectureNo(LoginCheck.getUserdb().getUserdbNo(), onLectureNo).isEmpty()) {
            cartRepository.save(new Cart(onLectureNo, LoginCheck.getUserdb().getUserdbNo()));
        }
        throw new RuntimeException("이미 카트에 있어");
    }

    @Override
    public void delete(Long cartNo) {
        cartRepository.deleteById(cartNo);
    }
}
