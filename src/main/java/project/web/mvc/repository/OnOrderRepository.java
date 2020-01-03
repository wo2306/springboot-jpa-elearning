package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.OnOrder;

public interface OnOrderRepository extends CrudRepository<OnOrder, Integer> {

}
