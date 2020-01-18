package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.domain.OnOrder;

import java.util.List;

public interface OnOrderRepository extends PagingAndSortingRepository<OnOrder, Long> {
    List<OnOrder> findByUserdbUserdbNo(Long userdbNo);

    @Query("select distinct o from OnOrder o inner join o.userdb u inner join o.onlecture l where u.userdbNo=?1")
    Page<OnOrder> findOnOrder(Long userdbNo, Pageable pageable);


    @Query("select o from OnOrder o inner join o.userdb u inner join o.onlecture l where u.userdbNo=?1 and l.onLectureNo=?2")
    OnOrder findByUserdbNoAndOnLectureNo(Long userdbNo, Long onLectureNo);

    @Query("select o from OnOrder o where o.onOrderCode = ?1")
    Page<OnOrder> findByOrderCode(String onOrderCode, Pageable pageable);

    @Query("select o from OnOrder o where o.onlecture.onLectureName LIKE CONCAT('%',:keyword,'%')")
    Page<OnOrder> findByLectureName(String keyword, Pageable pageable);

    @Query("select o from OnOrder o where o.userdb.userdbNo=?1 order by o.onlecture.onLectureName")
    Page<OnOrder> findByUserdb_UserdbNo(Long userdbNo, Pageable pageable);



}
