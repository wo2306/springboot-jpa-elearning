package project.web.mvc.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import project.web.mvc.domain.Authority;
import project.web.mvc.domain.Role;
import project.web.mvc.domain.Userdb;
import project.web.mvc.service.AuthorityService;
import project.web.mvc.service.UserdbService;

@Service
@RequiredArgsConstructor
public class CustomUserDetailService implements UserDetailsService {
    
	private final UserdbService userdbService;
	private final AuthorityService authorityService;
    
    //로그인 시도하려는 유저정보
//    private Userdb user;

    // 시큐리티의 내용 외 파라미터를 추가하고 싶을 때, 아래 사용
    //  제약조건: Controller 에서 Auth를 점검할 때, UserCustom 으로 받아야 함.
    //  예) (변경 전) @AuthenticationPrincipal User user => (변경 후) @AuthenticationPrincipal UserCustom user
    boolean enabled = true;
    boolean accountNonExpired = true;
    boolean credentialsNonExpired = true;
    boolean accountNonLocked = true;
    
    @Transactional
    public Userdb joinUser(Userdb userdb) {
        // 비밀번호 암호화
               BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
               userdb.setUserdbPassword(passwordEncoder.encode(userdb.getUserdbPassword()));
               return userdb;
    }

	@Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
    		// 로그인 시도하려는 유저정보 조회
        Userdb user = userdbService.selectByUserdbEmail(id);

        // 조회가 되지않는 고객은 에러발생.
        if(user == null){
            throw new UsernameNotFoundException(id);
        }
        
		Long userdbNo = user.getUserdbNo();
		String userdbEmail = user.getUserdbEmail();
		String userdbPassword = user.getUserdbPassword();
		String userdbNickName = user.getUserdbNickname();
		Boolean enabled = true;
		Boolean accountNonExpired = true;
		Boolean credentialsNonExpired = true;
		Boolean accountNonLocked = true;
		List<Authority> list = authorityService.selectByUserdbNo(userdbNo);

        // 조회한 정보를 userCustom에 담는다.
        // 만약 파라미터를 추가해야한다면 UserCustom 을 먼저 수정한다.
		if(user!=null&& !list.isEmpty()) {
			return new UserCustom (userdbEmail,userdbPassword, enabled, accountNonExpired, 
					credentialsNonExpired, accountNonLocked ,list
		            ,userdbNickName, userdbNo);
		}else {
			System.out.println("사용자에게 response보내기");
			return null;
		}
	}

    // DB에 등록된 권한에 따라 유저권한 부여 user_role
    private static Collection<Object> authorities(Userdb userdb){
        Collection<Object> authorities = new ArrayList<>();
        
        // admin 이메일을 제외한 모든 유저는 MEMBER ROLE 부여
        
        if (("admin@example.com").equals(userdb.getUserdbEmail())) {
            authorities.add(new SimpleGrantedAuthority(Role.ADMIN.getValue()));
        } else {
            authorities.add(new SimpleGrantedAuthority(Role.MEMBER.getValue()));
        }
        return authorities;
    }
}

//사용한 것, Role, UserCustom

