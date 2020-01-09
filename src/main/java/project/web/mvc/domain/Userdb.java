package project.web.mvc.domain;


import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Setter
@Getter
@Entity
@NoArgsConstructor
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

	@Column(nullable = false)
	private Long authority;
	
	public Userdb(Long userdbNo) {
		this.userdbNo = userdbNo;
	}
	
	@PrePersist
	public void insertAuthority() {
		this.authority = this.authority == null ? 1: this.authority;
	}
	
//	@OneToOne(mappedBy = "userdb")
//	private Authority authority;
//	@JsonBackReference
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
