package project.web.mvc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
    private int cartNo;

	@OneToOne
	@JoinColumn(name = "ON_LECTURE_NO", referencedColumnName = "ON_LECTURE_NO", nullable = false)
    private OnLecture onLecture;

	@OneToOne
	@JoinColumn(name = "USERDB_NO", referencedColumnName = "USERDB_NO", nullable = false)
    private Userdb userdb;

}