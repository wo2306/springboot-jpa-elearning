package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.OnOrder;

public interface OnOrderRepository extends PagingAndSortingRepository<OnOrder, Long> {

}
