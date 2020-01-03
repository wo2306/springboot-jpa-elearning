package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.OffOrder;

public interface OffOrderRepository extends CrudRepository<OffOrder, Integer> {

}
