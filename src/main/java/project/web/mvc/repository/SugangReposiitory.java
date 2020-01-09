package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import project.web.mvc.domain.Sugang;

import java.util.List;

public interface SugangReposiitory extends CrudRepository<Sugang, Long> {


    @Query("select s from Sugang s inner join s.userdb u where u.userdbNo=?1 and s.onLectureNo=?2")
    List<Sugang> findTopByUserdbUserdbNoAndOnLectureNo(Long userdbNo, Long onLectureNo);

    @Query("select s from Sugang s inner join s.userdb u where u.userdbNo=?1 and s.onDetailNo=?2 and s.onLectureNo=?3")
    Sugang findByUserdb_UserdbNoAndOnDetailNoAndOnLectureNo(Long userdbNo, Long onDetailNo, Long onLectureNo);
}
