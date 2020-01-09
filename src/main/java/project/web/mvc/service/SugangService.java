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
        return sugangReposiitory.findByUserdb_UserdbNoAndOnLectureNoOrderBySugangDate(userdbNo, onLectureNo);
    }

    public void insert(Sugang sugang) {
        // Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        Userdb userdb = auth.getPrincipal();
        Long userdbNo = 1L;
        if (sugangReposiitory.findByUserdb_UserdbNoAndOnDetailNo(userdbNo, sugang.getOnLectureNo()) == null) {
            sugang.setUserdb(new Userdb(userdbNo));
            sugangReposiitory.save(sugang);
        }
    }
}
