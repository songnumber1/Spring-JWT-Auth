package song.sts.jwtauth.security.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import lombok.RequiredArgsConstructor;
import song.sts.jwtauth.model.JwtModel;
import song.sts.jwtauth.security.Principal.PrincipalDetails;
import song.sts.jwtauth.service.UserService;
import song.sts.jwtauth.token.JwtTokenProvider;

@RequiredArgsConstructor
public class AuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	private final JwtTokenProvider jwtTokenProvider;
	private final UserService userService;

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		System.out.println("successfulAuthentication 실행됨 : 인증이완료되었습니다.");
		
		PrincipalDetails principalDetailis = (PrincipalDetails)authentication.getPrincipal();
		
		System.out.println(principalDetailis.getUser());
		
		JwtModel jwtModel = jwtTokenProvider.createToken(principalDetailis.getUser().getUsername());
		
		userService.loginProc(principalDetailis.getUser(), jwtModel);
		
        if (StringUtils.isNotBlank(jwtModel.getAccessToken())) {
            jwtTokenProvider.createCookie(response, jwtModel.getAccessToken());
            //jwtTokenProvider.saveToken(response, jwtModel.getAccessToken());
        }
        
		// TODO Auto-generated method stub
		super.onAuthenticationSuccess(request, response, authentication);
	}
}