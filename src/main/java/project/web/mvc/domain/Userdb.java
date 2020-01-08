package project.web.mvc.domain;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

import lombok.AccessLevel;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
public class Userdb {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "USERDB_SEQ_GENERATOR")
	@SequenceGenerator(
			name="USERDB_SEQ_GENERATOR", sequenceName = "USERDB_SEQ",
			initialValue = 1, allocationSize = 50)
	@Column(name = "USERDB_NO")
    private Long userdbNo;

	@Column(nullable = false, unique = true)
    private String userdbEmail;

	@Column(nullable = false)
    private String userdbPassword;

	@Column(nullable = false, unique = true)
	private String userdbNickname;

	public Userdb(Long userNo) {
		this.userdbNo = userNo;
	}

//
//	@OneToMany(mappedBy = "userdb")
//	@JsonBackReference
//	private List<Authority>authorities = new ArrayList<>();
//
//	@OneToMany(mappedBy = "userdb")
//	@JsonBackReference
//	private List<ClassAnswer>classAnsers = new ArrayList<>();
//
//	@OneToMany(mappedBy = "userdb")
//	@JsonBackReference
//	private List<Review>reviews = new ArrayList<>();
//
//	@OneToMany(mappedBy = "userdb")
//	@JsonBackReference
//	private List<OffOrder>offOrders = new ArrayList<>();
//
//	@OneToMany(mappedBy = "userdb")
//	@JsonBackReference
//	private List<OnOrder>onOrders = new ArrayList<>();
//
//	@OneToMany(mappedBy = "userdb", fetch = FetchType.EAGER)
//	@JsonBackReference
//	private List<Cart> carts = new ArrayList<>();
//
//	@OneToMany(mappedBy = "userdb")
//	@JsonBackReference
//	private List<WishList> wishLists = new ArrayList<>();
}
