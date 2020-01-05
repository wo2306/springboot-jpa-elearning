package project.web.mvc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.SequenceGenerator;

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
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ROADMAP_SEQ_GENERATOR")
	@SequenceGenerator(
			name="ROADMAP_SEQ_GENERATOR", sequenceName = "ROADMAP_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "ROADMAP_NO")
    private Long roadmapNo;

	@ManyToMany
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
	private List<OnLecture>onLectures = new ArrayList<OnLecture>();
	
	@Column(nullable = false)
    private String roadmapName;

    private int roadmapPrice;

    @Column(nullable = false)
    private String roadmapContent;

    @CreationTimestamp
    private Date roadmapRegdate;

}
