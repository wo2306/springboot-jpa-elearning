package project.web.mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.OffOrderRepository;
import project.web.mvc.repository.OnOrderRepository;

@Service
@RequiredArgsConstructor
@Transactional
public class OrderServiceImpl implements OrderService {
    private final OnOrderRepository onOrderRepository;
    private final OffOrderRepository offOrderRepository;

    @Override
    public void cartInsert(List<Long> onLectureNo, OnOrder onOrder) {
        for (int i=0; i<onLectureNo.size(); i++) {
        	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        	Userdb userdb = (Userdb)auth.getPrincipal();
        	Long userNo = userdb.getUserdbNo();
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
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userdbEmail = auth.getName();
        onOrderRepository.findByUserdbUserdbEmail(userdbEmail, pageable).iterator().forEachRemaining(list::add);
 
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
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userdbEmail = auth.getName();
        offOrderRepository.findByUserdbUserdbEmail(userdbEmail, pageable).iterator().forEachRemaining(list::add);
        return list;
    }

    @Override
    public boolean payCheck(Long onLectureNo) {
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userdbEmail = auth.getName();
        if (onOrderRepository.findByUserdbUserdbEmailAndOnlecture_OnLectureNo(userdbEmail, onLectureNo)!=null) {
            return true;
        };
        return false;
    }
}
