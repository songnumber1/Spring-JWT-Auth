package song.sts.jwtauth.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {
	
	@GetMapping("/account/login")
	public String loginForm1() {
		return "/account/login";
	}

	@GetMapping("/auth/loginForm")
	public String loginForm(HttpServletRequest request, HttpServletResponse response) {
		return "/user/loginForm";
	}

	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "/user/joinForm";
	}
}
