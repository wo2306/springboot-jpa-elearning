package project.web.mvc.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

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
	private Long onOrderNo;

	@Column(nullable = false)
	private String onOrderCode;

	@ManyToOne
//	@JsonManagedReference
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
	private OnLecture onlecture;

	@ManyToOne
//	@JsonManagedReference
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
	private Userdb userdb;

	@Column(nullable = false)
	private String onOrderMethod;

	@Column(nullable = false)
	private String onOrderState;

	@CreationTimestamp
	private Date onOrderRegdate;

	@Column(nullable = false)
	private int onOrderPrice;

	public OnOrder(int onLectureNo) {
		onlecture.setOnLectureNo((long)onLectureNo);
	}
}