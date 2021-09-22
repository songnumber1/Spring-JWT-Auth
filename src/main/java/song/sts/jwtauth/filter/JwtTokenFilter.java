package song.sts.jwtauth.filter;

import io.jsonwebtoken.ExpiredJwtException;
import song.sts.jwtauth.entity.User;
import song.sts.jwtauth.repository.UserRepository;
import song.sts.jwtauth.token.JwtTokenProvider;
import song.sts.jwtauth.util.FilterShouldNotFilter;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class JwtTokenFilter extends OncePerRequestFilter {
	private static final Logger log = LoggerFactory.getLogger(JwtTokenFilter.class);
	
	@Autowired
    private JwtTokenProvider jwtTokenProvider;
    
    @Autowired
    private UserRepository userRepository;

    @Override
    protected void doFilterInternal(
            HttpServletRequest request, HttpServletResponse response,
            FilterChain filterChain) throws ServletException, IOException {
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
            User userModel = userRepository.findByUsername(e.getClaims().getSubject());
            
            if (ObjectUtils.isNotEmpty(userModel)) {
                refreshToken = userModel.getToken();
            }

            log.error("JWT expired error : {} ", e);
        } catch (Exception e) {
            SecurityContextHolder.clearContext();
            log.error("JWT filter internal error : {} ", e);
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
                    log.error("JWT expired error : {} ", e);
                }
            } catch (Exception e) {
                SecurityContextHolder.clearContext();
                log.error("JWT filter internal error : {} ", e);
                return;
            }
        }

        filterChain.doFilter(request, response);
    }

    @Override
    protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
    	return FilterShouldNotFilter.shouldNotFilter(request);
    }

}