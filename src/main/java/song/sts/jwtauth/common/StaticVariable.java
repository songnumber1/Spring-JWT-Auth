package song.sts.jwtauth.common;

import org.springframework.stereotype.Component;

@Component
public class StaticVariable {
	// 해당 사이트 Context_Path
	public static String CONTEXT_PATH;

	// Access 토큰 쿠키 이름
	public static String COOKIE_HEADER_NAME;
	
	// 로그인 경로
	public static String LOGIN_URI = CONTEXT_PATH + FinalVariable.LOGIN_SUFFIX_URI;
}
