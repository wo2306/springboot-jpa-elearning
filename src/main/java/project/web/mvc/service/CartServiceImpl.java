package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.Cart;
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
        //        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        // auth.getPrincipal().getUserdbUserdbNo();
        cartRepository.deleteByUserdbUserdbNo(1L);
    }

    @Override
    public List<Cart> selectAll() {
        List<Cart> list = new ArrayList<>();
        //        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        String userdbEmail = auth.getName();
        cartRepository.findByUserdbUserdbEmail("wo2306@gmail.com").iterator().forEachRemaining(list::add);
        return list;
    }

    @Override
    @Transactional
    public void insert(Long onLectureNo) {
        //        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        String userdbEmail = auth.getName();
        //auth.getPrincipal().getUserdbUserdbNo();
        if (cartRepository.findByOnLectureOnLectureNo(onLectureNo)!=null) {
            System.out.println("null입니다.");
            throw new RuntimeException("이미 중복된 강의가 존재합니다.");
        };
        cartRepository.save(new Cart(onLectureNo, 1L));
    }

    @Override
    public void delete(Long cartNo) {
        cartRepository.deleteById(cartNo);
    }
}
