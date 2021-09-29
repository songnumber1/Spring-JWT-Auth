package song.sts.jwtauth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
	@GetMapping({"", "/", "home", "index", "main"})
	public String home() {
		return "index";
	}
	
	@GetMapping("profile")
	public String profile() {
		return "profile/profile";
	}
	
	@GetMapping("storage")
	public String storage() {
		return "storage/storage";
	}
	
	@GetMapping("csharp")
	public String csharp() {
		return "skill/csharp";
	}
}
