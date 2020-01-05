package project.web.mvc.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class OnOrder {

    @Id
    private Long onorderNo;

    @ManyToOne
    @JoinColumn(name = "onLectureNo")
    private OnLecture onLecture;

    @ManyToOne
    @JoinColumn(name = "studentno")
    private Student student;

    private String onorderCode;

    private String onorderMethod;

    private String onorderState;

    @CreationTimestamp
    private Date onorderRegdate;
}