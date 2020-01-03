package project.web.mvc.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class OnDetail {

	@Id
    private int onDetailNo;

    private int onLectureNo;

    private String onDetailUrl;

    private String onDetailName;

    private String onDetailPlaytime;

}