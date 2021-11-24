package song.sts.jwtauth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import song.sts.jwtauth.entity.setting.User;
import song.sts.jwtauth.model.JwtModel;
import song.sts.jwtauth.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public void setLoginProc(User user, JwtModel jwtModel) {
		user.setToken(jwtModel.getRefreshToken());
		user.setTokenExpired(jwtModel.getRefreshTokenExpirationDate());

		userRepository.save(user);
	}

	@Transactional
	public void setRefreshTokenEmpty(User user) {
		if (user == null)
			return;

		user.setToken(null);
		user.setTokenExpired(null);

		userRepository.save(user);
	}
}
