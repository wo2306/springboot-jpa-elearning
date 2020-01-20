package project.web.mvc.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import project.web.mvc.domain.Sugang;

import java.util.List;

public interface SugangReposiitory extends PagingAndSortingRepository<Sugang, Long> {


    @Query("select s from Sugang s inner join s.userdb u where u.userdbNo=?1 and s.onLecture.onLectureNo=?2 and s.sugangState=?3 order by s.sugangDate desc")
    List<Sugang> findTopByUserdbUserdbNoAndOnLectureNoAndSugangState(Long userdbNo, Long onLectureNo, String sugangState);

    @Query("select s from Sugang s inner join s.userdb u where u.userdbNo=?1 and s.onDetail.onDetailNo=?2 and s.onLecture.onLectureNo=?3")
    Sugang findByUserdb_UserdbNoAndOnDetailNoAndOnLectureNo(Long userdbNo, Long onDetailNo, Long onLectureNo);

    Page<Sugang> findByUserdb_UserdbNoOrderBySugangDate(Long userdbNo, Pageable pageable);

    Page<Sugang> findByUserdb_UserdbNoAndSugangState(Long userdbNo, String sugangState, Pageable pageable);

}
