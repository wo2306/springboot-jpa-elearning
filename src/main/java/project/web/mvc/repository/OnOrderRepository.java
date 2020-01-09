package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.OnOrder;

public interface OnOrderRepository extends PagingAndSortingRepository<OnOrder, Long> {
    Page<OnOrder> findTopByUserdbUserdbEmail(String userdbEmail, Pageable pageable);

    OnOrder findTopByUserdbUserdbEmailAndOnlecture_OnLectureNo(String userdbEmail, Long onLectureNo);
}
