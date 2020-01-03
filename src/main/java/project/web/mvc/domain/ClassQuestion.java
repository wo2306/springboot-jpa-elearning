package project.web.mvc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ClassQuestion {

	@Id
    private int classQuestionNo;

    private int studentNo;

    private int onLectureNo;

    private String classQuestionTitle;

    private String classQuestionContent;

    @CreationTimestamp
    private Date classQuestionRegdate;

}