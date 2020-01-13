package project.web.mvc.service;

import org.springframework.data.domain.Page;
import project.web.mvc.domain.OffOrder;
import project.web.mvc.domain.OnOrder;

import java.util.List;

public interface OrderService {

    void cartInsert(List<Long> onLectureNo, OnOrder onOrder);
    void onInsert(Long onLectureNo, OnOrder onOrder);

    void offInsert(OffOrder offOrder);

    List<OnOrder> onSelectAll();

    Page<OnOrder> onSelect(int pageNum);
    List<OffOrder> offSelect(int pageNum);

    boolean payCheck(Long onLectureNo);
}
