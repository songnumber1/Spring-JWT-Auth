package song.sts.jwtauth.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import io.jsonwebtoken.ExpiredJwtException;
import song.sts.jwtauth.entity.User;
import song.sts.jwtauth.service.UserService;
import song.sts.jwtauth.token.JwtTokenProvider;
import song.sts.jwtauth.util.FilterShouldNotFilter;

// 시큐리티가 Filter를 가지고 있는데 그 중 BasicAuthenticationFilter 라는것이 있음
// 권한이나 인증이 필요한 특정 주소를 요청했을 때 위 필터를 무조건 타게 되어 있음.
// 만약에 권한이 인증이 필요한 주소가 아니라면 이 필터는 호출되지 않음
public class JwtAuthorizationFilter extends BasicAuthenticationFilter{

	private UserService userService;
    private JwtTokenProvider jwtTokenProvider;
	
	public JwtAuthorizationFilter(AuthenticationManager authenticationManager, UserService userService, JwtTokenProvider jwtTokenProvider) {
		super(authenticationManager);
		// TODO Auto-generated constructor stub
		
		this.userService = userService;
		this.jwtTokenProvider = jwtTokenProvider;
	}
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//System.out.println("doFilterInternal : " + request.getRequestURI());
		
		String accessToken = jwtTokenProvider.resolveCookie(request);
        String refreshToken = null;

        // access 토큰 검증 과정
        try {
            if (StringUtils.isNotBlank(accessToken) && jwtTokenProvider.validateToken(accessToken)) {
                Authentication auth = jwtTokenProvider.getAuthentication(accessToken);
                SecurityContextHolder.getContext().setAuthentication(auth);
            }
            // access 토큰 만료시 refresh 토큰 가져오기
        } catch (ExpiredJwtException e) {
            User userModel = userService.userRepository.findByUsername(e.getClaims().getSubject());
            
            if (ObjectUtils.isNotEmpty(userModel)) {
                refreshToken = userModel.getToken();
            }
        } catch (Exception e) {
            SecurityContextHolder.clearContext();

            return;
        }

        // refresh 토큰으로 access 토큰 재 발급
        if (StringUtils.isNotBlank(refreshToken)) {
            try {
                try {
                    if (jwtTokenProvider.validateToken(refreshToken)) {
                        Authentication auth = jwtTokenProvider.getAuthentication(refreshToken);
                        SecurityContextHolder.getContext().setAuthentication(auth);

                        // 새로운 access 토큰 발급
                        String newAccessToken = jwtTokenProvider.createToken(jwtTokenProvider.getClaims(refreshToken, "sub")).getAccessToken();
                        jwtTokenProvider.createCookie(response, newAccessToken);
                    }
                } catch (ExpiredJwtException e) {
                    SecurityContextHolder.clearContext();
                }
            } catch (Exception e) {
                SecurityContextHolder.clearContext();
                return;
            }
        }

        chain.doFilter(request, response);
	}
	
	@Override
    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
		//System.out.println("shouldNotFilter : " + request.getServletPath());
    	return FilterShouldNotFilter.shouldNotFilter(request);
    }
}
