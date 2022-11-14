package potato.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class HomeController {

	//메인화면 접속
	@RequestMapping(value = "user_mainhome.do", method=GET)
	public String userHomeMove(HttpSession session, Model model) {
		return "mainhome/jsp/user_mainhome";
	}
	
	//도움말 접속
	@RequestMapping(value = "help.do", method=GET)
	public String helpMove() {
		return "cs/jsp/help";
	}
	
}
