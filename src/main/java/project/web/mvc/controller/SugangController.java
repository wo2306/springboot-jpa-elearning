package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import project.web.mvc.service.SugangService;

@RequestMapping("/sugang")
@RequiredArgsConstructor
@RestController
public class SugangController {
    private final SugangService sugangService;

    @RequestMapping("/complete/{onLectureNo}/{onDetailNo}")
    public void complete(@PathVariable Long onLectureNo, @PathVariable Long onDetailNo) {
        sugangService.complete(onLectureNo, onDetailNo);
    }

}
