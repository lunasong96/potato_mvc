package potato.controller;

import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.support.SessionStatus;

import potato.domain.UserDomain;
import potato.service.UserService;
import potato.vo.ForgotIdVO;
import potato.vo.ForgotPwVO;
import potato.vo.LoginVO;
import potato.vo.UserInfoVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@Component
public class UserController {
	
	@Autowired(required = false)
	private UserService us;
	
	@RequestMapping(value = "/login_page.do", method = GET)
	public String loginPage() {
		return "login/jsp/login";
	}//loginPage
	@RequestMapping(value = "/managerlogin_page.do", method = GET)
	public String managerloginPage() {
		return "manager/home/jsp/login";
	}//loginPage
	
	@RequestMapping(value = "/login.do", method = POST)
	public String login(Model model, LoginVO lVO, HttpSession session) {
		String url="redirect:user_mainhome.do";
		UserDomain ud = null;
		ud=us.searchMember(lVO);
		session.setAttribute("id", ud.getId());
		session.setAttribute("nick", ud.getNick());
		return url;
	}//login
	
	@RequestMapping(value = "logout.do", method = GET)
	public String logout( SessionStatus ss, HttpSession session ) {
		String url="redirect:user_mainhome.do";
		ss.setComplete();
		session.invalidate();
		return url;
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
	
	/**
	 * 회원가입1 페이지 이동
	 * @return
	 */
	@RequestMapping(value = "/signUp.do", method = GET)
	public String signUpPage1() {
		return "login/jsp/join";
	}
	
	/**
	 * 회원가입2 페이지 이동
	 * @param model
	 * @param uiVO
	 * @return
	 */
	@RequestMapping(value = "/signUp2.do", method = GET)
	public String signUpPage2(Model model, UserInfoVO uiVO) {
		return "login/jsp/join_img";
	}
	
	/**
	 * 회원가입 3페이지 이동
	 * @param session
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/signUp3.do", method = GET)
	public String signUpPage3(HttpSession session, Model model, HttpServletRequest request) {
		return "login/jsp/join_end";
	}
	
	/**
	 * 아이디 중복확인
	 * @return
	 */
	@RequestMapping("/duplChkId.do")
	public String duplChkId() {
		return "";
	}
	
	/**
	 * 닉네임 중복 확인
	 * @return
	 */
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
	
	@RequestMapping(value = "/forgotIdChk.do", method= POST) public String
	forgotUserIdChk(ForgotIdVO fiVO, Model model) { 
		String id="";
		id=us.searchId(fiVO); 
		model.addAttribute("id", id); 
		return "login/jsp/lolo";
	}
	 
	
	@RequestMapping(value = "/forgotPwChk.do", method = POST)
	public String forgotUserPwChk(ForgotPwVO fpVO, Model model) {
		String pass="";
		pass=us.searchPw(fpVO);
		model.addAttribute("id", fpVO.getId());
		model.addAttribute("pass", pass);
		return "login/jsp/lolo";
//		return "login/jsp/find_pass_popup";
	}
	
}//class
