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
public class OffLecture {

	@Id
    private int offLectureNo;

    private int academyNo;

    private String offLectureName;

    private String offLectureTeacher;
    
    private String category;

    private int offLectureSeat;

    private int offLectureReservedseat;
    
    private String offDetail;

    @CreationTimestamp
    private Date offLectureDate;

}