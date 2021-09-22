package song.sts.jwtauth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import song.sts.jwtauth.entity.User;
import song.sts.jwtauth.model.JwtModel;
import song.sts.jwtauth.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	public UserRepository userRepository;
	
	@Transactional
	public void loginProc(User user, JwtModel jwtModel) {
		user.setToken(jwtModel.getRefreshToken());
		user.setTokenExpired(jwtModel.getRefreshTokenExpirationDate());
		
		userRepository.save(user);
	}
}
