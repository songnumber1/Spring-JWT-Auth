package song.sts.jwtauth.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import song.sts.jwtauth.entity.User;
import song.sts.jwtauth.exception.AccountExceptionType;
import song.sts.jwtauth.repository.UserRepository;
import song.sts.jwtauth.util.ResponseData;
import song.sts.jwtauth.exception.AccountException;

@RestController
public class AuthRestController {
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@PostMapping("/auth/joinProc")
	public ResponseEntity<?> save(@RequestBody User user) {
		System.out.println(user);
		if (user.getUsername() == null || user.getUsername().isEmpty() || user.getPassword() == null
				|| user.getPassword().isEmpty()) {
			throw new AccountException(AccountExceptionType.REUQIRED_PARAMETER_ERROR);
		}

		User userEntity = userRepository.findByUsername(user.getUsername());

		if (userEntity != null) {
			throw new AccountException(AccountExceptionType.DUPLICATED_USER);
		}

		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles("ROLE_USER");
		userRepository.save(user);
		// return "회원가입완료";

		return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", null, null);
	}
}
