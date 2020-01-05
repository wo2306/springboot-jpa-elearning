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
public class OnOrder {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ON_ORDER_SEQ_GENERATOR")
	@SequenceGenerator(
			name="ON_ORDER_SEQ_GENERATOR", sequenceName = "ON_ORDER_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "ON_ORDER_NO")
    private int onOrderNo;

	@ManyToOne
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
    private OnLecture onlecture;

	@ManyToOne
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
    private Userdb userdb;

	@Column(nullable = false)
    private String onOrderCode;

	@Column(nullable = false)
    private String onOrderMethod;

	@Column(nullable = false)
    private String onOrderState;
    
    @CreationTimestamp
    private Date onOrderRegdate;
}