package project.web.mvc.domain;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CART_SEQ_GENERATOR")
	@SequenceGenerator(
			name="CART_SEQ_GENERATOR", sequenceName = "CART_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "CART_NO")
	private Long cartNo;

	@ManyToOne
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
	@OnDelete(action = OnDeleteAction.CASCADE)
	private OnLecture onLecture;

	@ManyToOne
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
	private Userdb userdb;

	public Cart(Long onLectureNo) {
		this.onLecture = new OnLecture(onLectureNo);
	}

	public Cart(Long onLectureNo, Long userNo) {
		this.onLecture = new OnLecture(onLectureNo);
		this.userdb = new Userdb(userNo);
	}
}