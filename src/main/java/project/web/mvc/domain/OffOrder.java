package project.web.mvc.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
public class OffOrder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "OFF_ORDER_SEQ_GENERATOR")
	@SequenceGenerator(
			name="OFF_ORDER_SEQ_GENERATOR", sequenceName = "OFF_ORDER_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "OFF_ORDER_NO")
    private Long offOrderNo;

	@ManyToOne
	@JoinColumn(name = "OFF_LECTURE_NO", referencedColumnName = "OFF_LECTURE_NO", nullable = false)
    private OffLecture offLecture;

    @ManyToOne
    @JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
    private Userdb userdb;

    @Column(nullable = false)
    private String offOrderMethod;
    
    @CreationTimestamp
    private Date offOrderRegdate;
}
