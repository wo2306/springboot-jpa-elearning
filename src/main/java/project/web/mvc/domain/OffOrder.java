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
public class OffOrder {
	
	@Id
    private int offorderNo;

    private int offLectureNo;

    private int studentNo;

    private String orderMethod;
    
    @CreationTimestamp
    private Date offOrderRegdate;
}
