package project.web.mvc.domain;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
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
	
	@OneToMany(mappedBy = "userdb")
	private List<Authority>authorities = new ArrayList<>();
    
	@OneToMany(mappedBy = "userdb")
	private List<ClassAnswer>classAnsers = new ArrayList<>();
	
	@OneToMany(mappedBy = "userdb")
	private List<Review>reviews = new ArrayList<>();
	
	@OneToMany(mappedBy = "userdb")
	private List<OffOrder>offOrders = new ArrayList<>();
	
	@OneToMany(mappedBy = "userdb")
	private List<OnOrder>onOrders = new ArrayList<>();
	
	@OneToOne(mappedBy = "userdb")
	private Cart cart;
	
	@OneToOne(mappedBy = "userdb")
	private WishList wishList;

}
