package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.OnOrder;

public interface OnOrderRepository extends PagingAndSortingRepository<OnOrder, Long> {
    Page<OnOrder> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);

    @Query("select o from OnOrder o inner join o.userdb u inner join o.onlecture l where u.userdbNo=?1 and l.onLectureNo=?2")
    OnOrder findByUserdbNoAndOnLectureNo(Long userdbNo, Long onLectureNo);
}
