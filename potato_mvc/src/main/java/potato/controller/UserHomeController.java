package potato.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class UserHomeController {

	@RequestMapping(value = "user_mainhome.do", method=GET)
	public String userHomeMove(HttpSession session, Model model) {
		return "mainhome/jsp/user_mainhome";
	}
	
}
