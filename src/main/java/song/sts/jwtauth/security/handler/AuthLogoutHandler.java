package song.sts.jwtauth.security.handler;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;

public class AuthLogoutHandler extends SecurityContextLogoutHandler {

	private String[] cookies;

	public AuthLogoutHandler(String... cookies) {
		this.cookies = cookies;
	}

	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {

// 		모든 쿠키 삭제
//		Cookie[] cookies = request.getCookies(); // 모든 쿠키의 정보를 cookies에 저장
//		
//		if (cookies != null) { // 쿠키가 한개라도 있으면 실행
//			for (int i = 0; i < cookies.length; i++) {
//				cookies[i].setMaxAge(0); // 유효시간을 0으로 설정
//				cookies[i].setPath("/"); // 이거 안하면 안된다.
//				response.addCookie(cookies[i]); // 응답 헤더에 추가
//			}
//		}

		if (this.cookies != null) {
			for (String cookieData : this.cookies) {
				Cookie cookie = new Cookie(cookieData, null);

				if (cookie != null) {
					cookie.setMaxAge(0); // 유효시간을 0으로 설정
					cookie.setPath("/"); // 이거 안하면 안된다.
					response.addCookie(cookie); // 응답 헤더에 추가

					response.addHeader("Set-Cookie", null);
				}
			}
		}

		SecurityContext context = SecurityContextHolder.getContext();
		context.setAuthentication(null);

		SecurityContextHolder.clearContext();
	}
}
