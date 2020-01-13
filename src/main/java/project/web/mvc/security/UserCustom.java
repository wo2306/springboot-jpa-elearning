package project.web.mvc.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter
@ToString
public class UserCustom extends User implements UserDetails {

	private static final long serialVersionUID = 1L;
    // 유저의 정보를 더 추가하고 싶다면 이곳과, 아래의 생성자 파라미터를 조절해야 한다.
    private String userdbNickName;
    private Long userdbNo;
    private String AUTHORITY;
    
    @Override
    public Collection<GrantedAuthority> getAuthorities() {
        ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new SimpleGrantedAuthority(AUTHORITY));
        return auth;
    }
    

    public UserCustom(String userdbEmail, String userdbPassword
            , boolean enabled
            , boolean accountNonExpired
            , boolean credentialsNonExpired
            , boolean accountNonLocked
            , Collection authorities
            , String userdbNickName
            , Long userdbNo) {
        super(userdbEmail, userdbPassword, enabled, accountNonExpired
        		, credentialsNonExpired, accountNonLocked, authorities);
        this.userdbNickName = userdbNickName;
        this.userdbNo = userdbNo;
    }

	
}
