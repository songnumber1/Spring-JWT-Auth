package song.sts.jwtauth.common;

public class FinalVariable {
	public final static String LOGIN_SUFFIX_URI = "/auth/loginForm";

	public final static String[] SECURITY_PERMIT_ALL = new String[] { "/auth/**", 
	"/js/**", 
	"/css/**", 
	"/assets/**", 
	"/v2/api-docs",
	"/swagger-resources",
	"/swagger-resources/**",
	"/configuration/ui",
	"/configuration/security",
	"/swagger-ui.html",
	"/webjars/**",
	"/v3/api-docs/**",
	"/swagger-ui/**" };

	public final static String SECURITY_LOGIN_PROC = "/loginProc";

	public final static String SECURITY_LOGOUT_URL = "/auth/logout";

	public final static String SECURITY_LOGOUT_SUCCESSURL = "/auth/loginForm";

	public final static String MOVIE_PATH = "G:\\movie";// "C:\\Program Files (x86)";
}
