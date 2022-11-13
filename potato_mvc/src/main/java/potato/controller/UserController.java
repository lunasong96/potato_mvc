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

import org.springframework.ui.Model;

public class UserController {
	
	@RequestMapping("login_page.do")
	public String loginPage() {
		return "/login.jsp";
	}//loginPage
	
	@RequestMapping("login.do")
	public String login(Model model, LoginVO lVO, HttpSession session) {
		return "/home.jsp";
	}//login
	
	@RequestMapping("logout.do")
	public String logout( SessionStatus ss ) {
		return "home.jsp";
	}//logout
	
	@RequestMapping("signUpAgree.do")
	public String signUpAgreePage() {
		return "/service_check.jsp";
	}
	
	@RequestMapping("signUp.do")
	public String signUpPage1() {
		return "";
	}
	
	@RequestMapping("signUp2.do")
	public String signUpPage(Model model, UserInfoVO uiVO) {
		return "";
	}
	
	@RequestMapping("signUp3.do")
	public String signUpPage3(HttpSession session, Model model, HttpServletRequest request) {
		return "";
	}
	
	@RequestMapping("duplChkId.do")
	public String duplChkId() {
		return "";
	}
	
	@RequestMapping("duplChkNick.do")
	public String duplChkNick() {
		return "";
	}
	
	@RequestMapping("forgotId.do")
	public String forgotUserId() {
		return "";
	}
	
	@RequestMapping("forgotPw.do")
	public String forgotUserPw() {
		return "";
	}
	
	@RequestMapping("forgotIdChk.do")
	public String forgotUserIdChk(ForgotIdVO fiVO) {
		return "";
	}
	
	@RequestMapping("forgotPwChk.do")
	public String forgotUserPwChk(ForgotPwVO fpVO) {
		return "";
	}
	
}//class
