package project.web.mvc.service;

import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;

import java.util.List;

public interface OnLectureService {

    void insert(OnLecture onLecture);

    void delete(Long onLectureNo);

    void update(OnLecture onLecture);

    List<OnLecture> selectAll();

    List<OnDetail> selectById(Long onLectureNo);

    OnLecture selectOnLectureById(Long onLectureNo);

    OnDetail selectOnDetailById(Long onDetailNo);

    List<OnLecture> selectByKeyword(String keyword);
}
