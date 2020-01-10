package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.OffOrder;

public interface OffOrderRepository extends PagingAndSortingRepository<OffOrder, Long> {

    Page<OffOrder> findByUserdbUserdbNo(Long userdbNo, Pageable pageable);
}