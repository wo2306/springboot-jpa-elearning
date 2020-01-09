package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.OffOrderRepository;
import project.web.mvc.repository.OnOrderRepository;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class OrderServiceImpl implements OrderService {
    private final OnOrderRepository onOrderRepository;
    private final OffOrderRepository offOrderRepository;

    @Override
    public void cartInsert(List<Long> onLectureNo, OnOrder onOrder) {
        for (int i=0; i<onLectureNo.size(); i++) {
            //        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
            // Long userNo = auth.getPrincipal().getUserdbUserdbNo()
            Long userNo = 1L;
            onOrder.setOnlecture(new OnLecture(onLectureNo.get(i)));
            onOrder.setUserdb(new Userdb(userNo));
            onOrderRepository.save(onOrder);
        }
    }

    @Override
    public void onInsert(Long onLectureNo, OnOrder onOrder) {
        Long userNo = 1L;
        onOrder.setOnlecture(new OnLecture(onLectureNo));
        onOrder.setUserdb(new Userdb(userNo));
        onOrderRepository.save(onOrder);
    }

    @Override
    public List<OnOrder> onSelect(int pageNum) {
        List<OnOrder> list = new ArrayList<>();
        Pageable pageable = PageRequest.of(pageNum, 10);
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        String userdbEmail = auth.getName();
        String userdbEmail = "wo2306@gmail.com";
        onOrderRepository.findTopByUserdbUserdbEmail(userdbEmail, pageable).iterator().forEachRemaining(list::add);

        return list;
    }

    @Override
    public void offInsert(OffOrder offOrder) {
        offOrderRepository.save(offOrder);
    }

    @Override
    public List<OffOrder> offSelect(int pageNum) {
        List<OffOrder> list = new ArrayList<>();
        Pageable pageable = PageRequest.of(pageNum, 10);
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        String userdbEmail = auth.getName();
        String userdbEmail = "wo2306@gmail.com";
        offOrderRepository.findTopByUserdbUserdbEmail(userdbEmail, pageable).iterator().forEachRemaining(list::add);
        return list;
    }

    @Override
    public boolean payCheck(Long onLectureNo) {
        //        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        String userdbEmail = auth.getName();
        String userdbEmail = "asdf@naver.com";
        if (onOrderRepository.findTopByUserdbUserdbEmailAndOnlecture_OnLectureNo(userdbEmail, onLectureNo)!=null) {
            System.out.println("11111111111111111111111111111111111111111111111");
            return true;
        };
        return false;
    }
}
