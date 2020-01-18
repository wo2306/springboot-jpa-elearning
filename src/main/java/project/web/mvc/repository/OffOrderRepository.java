package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.OffOrder;

public interface OffOrderRepository extends PagingAndSortingRepository<OffOrder, Long> {

    @Query("select distinct o from OffOrder o inner join o.userdb u inner join o.offLecture l where u.userdbNo=?1")
    Page<OffOrder> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);

    @Query("select o from OffOrder o where o.offLecture.offLectureName=?1")
    Page<OffOrder> findByLectureName(String keyword, PageRequest of);

    @Query("select o from OffOrder o where o.userdb.userdbEmail=?1")
    Page<OffOrder> findByUserdbUserdbEmail(String userdbEmail, PageRequest of);
    
}