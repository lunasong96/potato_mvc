package potato.manager.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET; 

@Controller
public class MgrHomeController {
	//로그아웃
	@RequestMapping(value="/mgr_login.do",method=GET)
	public String mgrLogout(HttpSession session) {
		return "manager/home/jsp/login";
	}//mgrLogout
	
	//대시보드(관리자홈) 이동
	@RequestMapping(value="/mgrHome.do",method=GET)
	public String mgrHomeMove(HttpSession session,Model model) {
		return "manager/home/jsp/manager_mainhome";
	}//mgrHomeMove
	
	//회원관리 이동
	@RequestMapping(value="/memberManagement.do",method=GET)
	public String memberManagement() {
		return "manager/member_management/jsp/member_management";
	}//memberManagement
	
	//휴게소관리 이동
	@RequestMapping(value="/restManagement.do",method=GET)
	public String restManagement() {
		return "manager/rest_management/jsp/manager_rest_management";
	}//restManagement
	
	//리뷰관리 이동
	@RequestMapping(value="/reviewManagement.do",method=GET)
	public String reviewManagement() {
		return "manager/review_management/jsp/manager_review_management";
	}//reviewManagement 
	
	//비밀번호 변경 이동 
	@RequestMapping(value="/passChange.do",method=GET)
	public String passChange() {
		return "manager/pass_change/jsp/manager_password_change";
	}//passChange

}
