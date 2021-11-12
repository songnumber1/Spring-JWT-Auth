package song.sts.jwtauth.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auth")
public class AuthController {

	@GetMapping("/login")
	public String loginForm1() {
		return "/auth/login";
	}

	@GetMapping("/loginForm")
	public String loginForm(HttpServletRequest request, HttpServletResponse response) {
		return "/auth/loginForm";
	}

	@GetMapping("/joinForm")
	public String joinForm() {
		return "/auth/joinForm";
	}
}
