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
public class ClassAnswer {

	@Id
    private int classAnswerNo;

    private int classQuestionNo;

    private int studentNo;

    private String classAnswerTitle;

    private String classAnswerContent;

    @CreationTimestamp
    private Date classAnswerRegdate;

}