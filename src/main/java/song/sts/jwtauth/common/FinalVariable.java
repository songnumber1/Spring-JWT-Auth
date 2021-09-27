package song.sts.jwtauth.common;

public class FinalVariable {
	public final static String LOGIN_SUFFIX_URI = "/auth/loginForm";
	
	public final static String[] SECURITY_PERMIT_ALL = new String[] {"/auth/**", "/js/**", "/css/**", "/assets/**"};
	
	public final static String SECURITY_LOGIN_PROC = "/loginProc";
	
	public final static String SECURITY_LOGOUT_URL = "/auth/logout";
	
	public final static String SECURITY_LOGOUT_SUCCESSURL = "/auth/loginForm";
}
