package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.Sugang;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.SugangReposiitory;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SugangService {
    private final SugangReposiitory sugangReposiitory;

    public List<Sugang> sugangList(Long onLectureNo) {
        //        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        String userdbEmail = auth.getName();
        Long userdbNo = 1L;
        return null;
    }

    public void insert(Long onLectureNo, Long onDetailNo) {
        Long userdbNo = 1L;
        if (sugangReposiitory.findTopByUserdb_UserdbNoAndOnDetailNo(onLectureNo, userdbNo) == null) {
            sugangReposiitory.save(new Sugang(null, new Userdb(1L),null, "수강중", onDetailNo, onLectureNo));
        }
    }

    public void complete(Long onLectureNo, Long onDetailNo) {
        // Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        Userdb userdb = auth.getPrincipal();
        Long userdbNo = 1L;
        if (sugangReposiitory.findTopByUserdb_UserdbNoAndOnDetailNo(onLectureNo, userdbNo) == null) {
            sugangReposiitory.save(new Sugang(null, new Userdb(1L),null, "수강완료", onDetailNo, onLectureNo));
        }
    }
}
