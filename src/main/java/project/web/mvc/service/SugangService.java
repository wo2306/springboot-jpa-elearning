package project.web.mvc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
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
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return sugangReposiitory.findTopByUserdbUserdbNoAndOnLectureNo(userdb.getUserdbNo(), onLectureNo);
    }

    public void insert(Long onLectureNo, Long onDetailNo) {
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (sugangReposiitory.findByUserdb_UserdbNoAndOnDetailNoAndOnLectureNo(userdb.getUserdbNo(), onDetailNo, onLectureNo) == null) {
            sugangReposiitory.save(new Sugang(null, userdb, null, "수강중", onDetailNo, onLectureNo));
        }
    }

    public void complete(Long onLectureNo, Long onDetailNo) {
        Userdb userdb = (Userdb) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Sugang sugang = sugangReposiitory.findByUserdb_UserdbNoAndOnDetailNoAndOnLectureNo(userdb.getUserdbNo(), onDetailNo, onLectureNo);
        sugang.setSugangState("수강완료");
        sugangReposiitory.save(sugang);
    }
}
