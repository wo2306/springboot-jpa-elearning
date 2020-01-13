package project.web.mvc.service;


import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import project.web.mvc.domain.Userdb;
import project.web.mvc.repository.UserdbRepository;

@Service
@RequiredArgsConstructor
public class UserdbServiceImpl implements UserdbService {

	private final UserdbRepository userdbRepository;
	private  BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@Override
	public PasswordEncoder passwordEncoder() {
		return this.passwordEncoder();
	}

	//UserdbEmail에 따른 User정보조회
	@Override
	public Userdb selectByUserdbEmail(String userdbEmail) {
		Userdb result =userdbRepository.findByUserdbEmail(userdbEmail);
		return result;
	}

	//UserdbNo에 따른 User정보조회
	@Override
	public Userdb selectByUserdbNo(Long userdbNo) {
		Userdb result = userdbRepository.findById(userdbNo).orElse(null);
		return result;
	}

    //아이디중복체크
	@Override
	public boolean duplicatedByEmail(Userdb userdb) {
        String userdbEmail = userdb.getUserdbEmail();
        Userdb user = selectByUserdbEmail(userdbEmail);
        return user == null;
    }

	//회원가입
	@Override
	public void insert(Userdb userdb) {
		if(duplicatedByEmail(userdb)) {
				//비밀번호 인코딩
				String password = userdb.getUserdbPassword();
				String encodedPassword = passwordEncoder.encode(password);
				userdb.setUserdbPassword(encodedPassword);
				//회원가입
				userdbRepository.save(userdb);
		}
	}

	//회원탈퇴
	@Override
	public void delete(Long userdbNo) {
		userdbRepository.deleteById(userdbNo);
	}



}
