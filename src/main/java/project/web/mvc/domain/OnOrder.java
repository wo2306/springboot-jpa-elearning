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
public class OnOrder {

	@Id
    private int onorderNo;

    private int onlectureNo;

    private int studentNo;

    private String onorderCode;

    private String onorderMethod;

    private String onorderState;
    
    @CreationTimestamp
    private Date onorderRegdate;
}