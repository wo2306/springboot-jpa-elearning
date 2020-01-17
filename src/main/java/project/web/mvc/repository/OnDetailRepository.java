package project.web.mvc.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import project.web.mvc.domain.OnDetail;

import java.util.List;

public interface OnDetailRepository extends CrudRepository<OnDetail, Long> {

    List<OnDetail> findByOnLectureOnLectureNo(Long onLectureNo);

    void deleteByOnLecture_OnLectureNo(Long onLectureNo);
}

