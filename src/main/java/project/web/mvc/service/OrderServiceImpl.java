package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.web.mvc.domain.*;
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
        couponDiscount(couponCode);
    }

    @Override
    public Page<OnOrder> onSelectByUserNo(int pageNum) {
        return onOrderRepository.findByUserdb_UserdbNo(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum - 1, 12));
    }

    @Override
    public void couponDiscount(String couponCode) {
        Coupon coupon = couponRepository.findById(couponCode).orElse(null);
        coupon.setCouponRemainingCount(coupon.getCouponRemainingCount()-1);
        couponRepository.save(coupon);
    }

    @Override
    public Page<OnOrder> onSelectAll(int pageNum) {
        return onOrderRepository.findAll(PageRequest.of(pageNum - 1, 10));
    }

    @Override
    public void offInsert(Long offLectureNo) {
        offOrderRepository.save(new OffOrder(null, new OffLecture(offLectureNo), LoginCheck.getUserdb(), "신용카드", null));
    }

    @Override
    public Page<OffOrder> offSelect(int pageNum) {
        return offOrderRepository.findAll(PageRequest.of(pageNum - 1, 10));
    }

    @Override
    public Page<OnOrder> onSelectById(int pageNum, String keyword) {
        return onOrderRepository.findByOrderCode(keyword, PageRequest.of(pageNum - 1, 10));
    }

    @Override
    public Page<OnOrder> onSelectByLectureName(int pageNum, String keyword) {
        return onOrderRepository.findByLectureName(keyword,  PageRequest.of(pageNum - 1, 10));
    }

    @Override
    public Page<OffOrder> offSelectByUserEmail(int pageNum, String keyword) {
        return offOrderRepository.findByUserdbUserdbEmail(keyword, PageRequest.of(pageNum - 1, 10));
    }

    @Override
    public Page<OffOrder> offSelectByUserdbNo(int pageNum) {
        return offOrderRepository.findByUserdbUserdbNo(LoginCheck.getUserdb().getUserdbNo(),PageRequest.of(pageNum - 1, 10));
    }

    @Override
    public Page<OffOrder> offSelectByLectureName(int pageNum, String keyword) {
        return offOrderRepository.findByLectureName(keyword, PageRequest.of(pageNum - 1, 10));
    }

    @Override
    public boolean payCheck(Long onLectureNo) {
        Userdb userdb = LoginCheck.getUserdb();
        if (userdb != null) {
            return onOrderRepository.findByUserdbNoAndOnLectureNo(userdb.getUserdbNo(), onLectureNo) != null;
        }
        return false;
    }

    @Override
    public Page<OnOrder> onSelect(int pageNum) {
        return onOrderRepository.findOnOrder(LoginCheck.getUserdb().getUserdbNo(), PageRequest.of(pageNum - 1, 9));
    }
}
