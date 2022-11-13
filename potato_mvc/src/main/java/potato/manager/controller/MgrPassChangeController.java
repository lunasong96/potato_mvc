package potato.manager.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import potato.manager.vo.MgrPassChangeVO;

@Controller
public class MgrPassChangeController {
	
	//비번 변경 화면 가져오기
	public String passChange(HttpSession session) {
		
		return "manager/pass_change/jsp/manager_password_change";
	}
	
	//비번 변경 후 로그인 페이지로 이동
	public String moveLogin(MgrPassChangeVO mpcVO) {
		
		return "manager/home/jsp/login";
	}
}
