package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.OffOrder;

public interface OffOrderRepository extends PagingAndSortingRepository<OffOrder, Long> {

    Page<OffOrder> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);

    @Query("select o from OffOrder o inner join OffLecture l where l.offLectureName=?1")
    Page<OffOrder> findByLectureName(String keyword, PageRequest of);

    @Query("select o from OffOrder o inner join Userdb u where u.userdbEmail=':userdbEmail'")
    Page<OffOrder> findByUserdbUserdbEmail(String userdbEmail, PageRequest of);
}