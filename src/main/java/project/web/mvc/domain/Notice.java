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
public class Notice {

	@Id
    private int noticeNo;

    private String noticeTitle;

    private String noticeContent;

    private String noticeRegdate;

}