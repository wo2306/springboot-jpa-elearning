package project.web.mvc.service;

import org.springframework.data.domain.Page;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.OnOrder;

import java.util.List;

public interface OrderService {

    void cartInsert(List<Long> onLectureNo, OnOrder onOrder);
    void onInsert(Long onLectureNo, OnOrder onOrder, String couponCode);

    void offInsert(Long offLectureNo);

    Page<OnOrder> onSelectAll(int pageNum);

    Page<OnOrder> onSelect(int pageNum);
    Page<OffOrder> offSelect(int pageNum);

    boolean payCheck(Long onLectureNo);

    Page<OnOrder> onSelectById(int pageNum, String keyword);

    Page<OnOrder> onSelectByLectureName(int pageNum, String keyword);

    Page<OffOrder> offSelectByLectureName(int pageNum, String keyword);

    Page<OffOrder> offSelectByUserdbNo(int pageNum);

    Page<OffOrder> offSelectByUserEmail(int pageNum, String keyword);

    void couponDiscount(String couponCode);

    Page<OnOrder> onSelectByUserNo(int pageNum);
    int findDate();

}
