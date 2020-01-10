package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.Cart;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.CartRepository;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;

    @Override
    public void deleteAll() {
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        cartRepository.deleteByUserdbUserdbNo(userdb.getUserdbNo());
    }

    @Override
    public List<Cart> selectAll() {
        List<Cart> list = new ArrayList<>();
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)) {
            Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            cartRepository.findByUserdbNo(userdb.getUserdbNo()).iterator().forEachRemaining(list::add);
        }
//        cartRepository.findByUserdbUserdbEmail("kosta").iterator().forEachRemaining(list::add);
        return list;
    }

    @Override
    @Transactional
    public void insert(Long onLectureNo) {
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (cartRepository.findByUserdbUserdbNoAndOnLecture_OnLectureNo(userdb.getUserdbNo(), onLectureNo).isEmpty()) {
            throw new RuntimeException("이미 중복된 강의가 존재합니다.");
        }
        cartRepository.save(new Cart(onLectureNo, userdb.getUserdbNo()));
    }

    @Override
    public void delete(Long cartNo) {
        cartRepository.deleteById(cartNo);
    }
}
