package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.OnOrder;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.OffOrderRepository;
import project.web.mvc.repository.OnOrderRepository;
import project.web.mvc.util.LoginCheck;
import sun.rmi.runtime.Log;

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
            onOrder.setOnlecture(new OnLecture(onLectureNo.get(i)));
            onOrder.setUserdb(LoginCheck.getUserdb());
            onOrderRepository.save(onOrder);
        }
    }

    @Override
    public void onInsert(Long onLectureNo, OnOrder onOrder) {
        onOrder.setOnlecture(new OnLecture(onLectureNo));
        onOrder.setUserdb(LoginCheck.getUserdb());
        onOrderRepository.save(onOrder);
    }

    @Override
    public List<OnOrder> onSelectAll() {
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return onOrderRepository.findByUserdbUserdbNo(userdb.getUserdbNo());
    }

    @Override
    public void offInsert(OffOrder offOrder) {
        offOrderRepository.save(offOrder);
    }

    @Override
    public List<OffOrder> offSelect(int pageNum) {
        List<OffOrder> list = new ArrayList<>();
        Pageable pageable = PageRequest.of(pageNum-1, 10);
        offOrderRepository.findByUserdbUserdbNo(LoginCheck.getUserdb().getUserdbNo(), pageable).iterator().forEachRemaining(list::add);
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

    @Override
    public Page<OnOrder> onSelect(int pageNum) {
        return onOrderRepository.findOnOrder(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum - 1, 9));
    }
}
