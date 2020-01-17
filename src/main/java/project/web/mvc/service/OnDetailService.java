package project.web.mvc.service;

import project.web.mvc.domain.OnDetail;

public interface OnDetailService {

    void insert(OnDetail onDetail);

    void deleteByOnLectureNo(Long onLectureNo);
}
