package potato.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import potato.vo.ForgotIdVO;
import potato.vo.ForgotPwVO;
import potato.vo.LoginVO;
import potato.vo.UserInfoVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class UserController {
	
	@RequestMapping(value = "/login_page.do", method = GET)
	public String loginPage() {
		return "login/jsp/login";
	}//loginPage
	
	@RequestMapping(".login.do")
	public String login(Model model, LoginVO lVO, HttpSession session) {
		return "";
	}//login
	
	@RequestMapping("logout.do")
	public String logout( SessionStatus ss ) {
		return "home.jsp";
	}//logout
	
	@RequestMapping(value = "/signUpAgree.do", method = GET)
	public String signUpAgreePage() {
		return "login/jsp/service_check";
	}
	
	@RequestMapping(value = "/tos1.do", method = GET)
	public String tos1() {
		return "login/jsp/tos1";
	}
	
	@RequestMapping(value = "/tos2.do", method = GET)
	public String tos2() {
		return "login/jsp/tos2";
	}
	
	@RequestMapping(value = "/signUp.do", method = GET)
	public String signUpPage1() {
		return "login/jsp/join";
	}
	
	@RequestMapping(value = "/signUp2.do", method = GET)
	public String signUpPage2(Model model, UserInfoVO uiVO) {
		return "login/jsp/join_img";
	}
	
	@RequestMapping(value = "/signUp3.do", method = GET)
	public String signUpPage3(HttpSession session, Model model, HttpServletRequest request) {
		return "login/jsp/join_end";
	}
	
	@RequestMapping("/duplChkId.do")
	public String duplChkId() {
		return "";
	}
	
	@RequestMapping("duplChkNick.do")
	public String duplChkNick() {
		return "";
	}
	
	@RequestMapping(value = "/forgotId.do", method = GET)
	public String forgotUserId() {
		return "login/jsp/find_id";
	}
	
	@RequestMapping(value = "/forgotPw.do", method = GET)
	public String forgotUserPw() {
		return "login/jsp/find_pass";
	}
	
	@RequestMapping(value = "forgotIdChk.do", method = GET)
	public String forgotUserIdChk(ForgotIdVO fiVO) {
		return "login/jsp/find_id_popup";
	}
	
	@RequestMapping(value = "forgotPwChk.do", method = GET)
	public String forgotUserPwChk(ForgotPwVO fpVO) {
		return "login/jsp/find_pass_popup";
	}
	
}//class
