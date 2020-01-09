package project.web.mvc.repository;

import org.springframework.data.repository.CrudRepository;
import project.web.mvc.domain.Sugang;

import java.util.List;

public interface SugangReposiitory extends CrudRepository<Sugang, Long> {

    List<Sugang> findByUserdb_UserdbNoAndOnLectureNoOrderBySugangDate(Long userdbNo, Long onLectureNo);

    Sugang findByUserdb_UserdbNoAndOnDetailNo(Long userdbNo, Long onDetailNo);

}
