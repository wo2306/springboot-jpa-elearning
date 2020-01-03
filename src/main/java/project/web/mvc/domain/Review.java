package project.web.mvc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

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
public class Review {
	
	@Id
    private int reviewNo;

    private int studentNo;

    private int onlectureNo;

    private String reviewTitle;

    private String reviewContent;

    private int reviewScore;
    
    @CreationTimestamp
    private Date reviewRegdate;
}
