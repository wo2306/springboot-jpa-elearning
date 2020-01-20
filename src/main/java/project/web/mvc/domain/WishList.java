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
public class WishList {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WISH_LIST_SEQ_GENERATOR")
	@SequenceGenerator(
			name="WISH_LIST_SEQ_GENERATOR", sequenceName = "WISH_LIST_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "WISH_LIST_NO")
	private Long wishListNo;

	@ManyToOne
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
	private OnLecture onLecture;

	@ManyToOne
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
	private Userdb userdb;

	
	public WishList(Long onlectureNo, Long userNo) {
		this.onLecture = new OnLecture(onlectureNo);
		this.userdb = new Userdb(userNo);
	}
}




