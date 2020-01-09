package project.web.mvc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import project.web.mvc.domain.Sugang;
import project.web.mvc.service.SugangService;

@RequestMapping("/sugang")
@RequiredArgsConstructor
@RestController
public class SugangController {
    private final SugangService sugangService;

    @RequestMapping("/insert/")
    public void insert(@PathVariable Sugang sugang) {
        sugangService.insert(sugang);
    }

}
