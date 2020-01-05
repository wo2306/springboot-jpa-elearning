package project.web.mvc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

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
public class Roadmap {

	@Id
    private int roadmapNo;

    private int onlectureNo;

    private int roadmapName;

    private int roadmapPrice;

    private String roadmapContent;

    @CreationTimestamp
    private Date roadmapRegdate;

}
