package potato.manager.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import potato.manager.vo.MgrPassChangeVO;

@Controller
public class MgrPassChangeController {
	
	//비번 변경 화면 가져오기
	@RequestMapping(value="/mgr_passChange.do",method=GET)
	public String passChange(HttpSession session) {
		
		return "manager/pass_change/jsp/manager_password_change";
	}
	
	//비번 변경 후 로그인 페이지로 이동 //매개변수 : MgrPassChangeVO mpcVO
	@RequestMapping(value="/passToLogin.do",method=GET)
	public String moveLogin() {
		
		return "manager/home/jsp/login";
	}
}
