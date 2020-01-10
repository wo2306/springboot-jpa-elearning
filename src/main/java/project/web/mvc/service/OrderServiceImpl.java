package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.OffOrderRepository;
import project.web.mvc.repository.OnOrderRepository;
import project.web.mvc.util.LoginCheck;

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
        for (int i = 0; i < onLectureNo.size(); i++) {
            Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            onOrder.setOnlecture(new OnLecture(onLectureNo.get(i)));
            onOrder.setUserdb(userdb);
            onOrderRepository.save(onOrder);
        }
    }

    @Override
    public void onInsert(Long onLectureNo, OnOrder onOrder) {
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        onOrder.setOnlecture(new OnLecture(onLectureNo));
        onOrder.setUserdb(userdb);
        onOrderRepository.save(onOrder);
    }

    @Override
    public List<OnOrder> onSelect(int pageNum) {
        List<OnOrder> list = new ArrayList<>();
        Pageable pageable = PageRequest.of(pageNum, 10);
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        onOrderRepository.findByUserdbUserdbNo(userdb.getUserdbNo(), pageable).iterator().forEachRemaining(list::add);
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
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        offOrderRepository.findByUserdbUserdbNo(userdb.getUserdbNo(), pageable).iterator().forEachRemaining(list::add);
        return list;
    }

    @Override
    public boolean payCheck(Long onLectureNo) {
        Userdb userdb = LoginCheck.getUserdb();
        if (userdb!=null) {
            return onOrderRepository.findByUserdbNoAndOnLectureNo(userdb.getUserdbNo(), onLectureNo) != null;
        }
        return false;
    }
}
