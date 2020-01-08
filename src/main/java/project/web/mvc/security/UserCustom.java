//package project.web.mvc.security;
//
//import java.util.Collection;
//
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//
//import lombok.Getter;
//import lombok.Setter;
//import lombok.ToString;
//
//@Getter
//@Setter
//@ToString
//public class UserCustom extends User implements UserDetails {
//
//	private static final long serialVersionUID = 1L;
//    // 유저의 정보를 더 추가하고 싶다면 이곳과, 아래의 생성자 파라미터를 조절해야 한다.
////    private String userdbEmail;
//    private String userdbNickName;
//    private Long userdbNo;
//    
//
//    public UserCustom(String userdbEmail, String userdbPassword
//            , boolean enabled
//            , boolean accountNonExpired
//            , boolean credentialsNonExpired
//            , boolean accountNonLocked
//            , Collection authorities
//            , String userdbNickName
//            , Long userdbNo) {
//        super(userdbEmail, userdbPassword, enabled, accountNonExpired
//        		, credentialsNonExpired, accountNonLocked, authorities);
//        this.userdbNickName = userdbNickName;
//        this.userdbNo = userdbNo;
//    }
//
//	
//}
