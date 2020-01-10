package project.web.mvc.service;

import com.google.common.collect.Lists;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.OnDetail;
import project.web.mvc.domain.OnLecture;
import project.web.mvc.repository.OnDetailRepository;
import project.web.mvc.repository.OnLectureRepository;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class OnLectureServiceImpl implements OnLectureService {
    private final OnLectureRepository onLectureRepository;
    private final OnDetailRepository onDetailRepository;


    @Override
    public void insert(OnLecture onLecture) {
        System.out.println("온렉쳐IMPL 인설트실행");

        OnLecture result = onLectureRepository.save(onLecture);
        System.out.println("인설트 서비스결과" + result);
    }


    @Override
    public List<OnLecture> selectAll() {
        List<OnLecture> list = Lists.newArrayList(onLectureRepository.findAll());
        System.out.println("집중!! 서비스 결과나왓다!!!");
        for (OnLecture o : list) {
            System.out.println(o);
        }
        return list;
    }

    @Override
    public void delete(Long onLectureNo) {
        System.out.println("딜리트실행");
        onLectureRepository.deleteById(onLectureNo);

    }

    @Override
    public void update(OnLecture onLecture) {
        System.out.println("업데이트서비스실행");
        onLectureRepository.save(onLecture);

    }


    @Override
    public List<OnDetail> selectById(Long onLectureNo) {
        List<OnDetail> list = new ArrayList<>();
        onDetailRepository.findByOnLectureOnLectureNo(onLectureNo).iterator().forEachRemaining(list::add);
        return list;
        //업데이트 덜함
    }

    @Override
    public OnLecture selectOnLectureById(Long onLectureNo) {
        return onLectureRepository.findById(onLectureNo).orElse(null);
    }

    @Override
    public OnDetail selectOnDetailById(Long onDetailNo) {
        return onDetailRepository.findById(onDetailNo).orElse(null);
    }

    @Override
    public List<OnLecture> selectByKeyword(String keyword) {
        return onLectureRepository.findByKeyword(keyword);
    }
}


