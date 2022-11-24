package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import potato.domain.UserDomain;
import potato.service.UserService;
import potato.vo.ForgotIdVO;
import potato.vo.ForgotPwVO;
import potato.vo.LoginVO;
import potato.vo.ManagerLoginVO;
import potato.vo.UserInfoVO;

//@SessionAttributes({"id","nick", "img"})
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
		return "manager/home/jsp/manager_login";
	}//loginPage
	
	@RequestMapping(value = "/login.do", method = POST)
	public String login(LoginVO lVO, HttpSession ss) {
		String url="redirect:user_mainhome.do";
		UserDomain ud = null;
		ud=us.searchMember(lVO);
		ss.setAttribute("id", ud.getId());
		ss.setAttribute("nick", ud.getNick());
		ss.setAttribute("img", ud.getImg());
		return url;
	}//login
	
	@RequestMapping(value = "/managerlogin.do", method = POST)
	public String managerlogin(ManagerLoginVO mlVO, HttpSession ss) {
		String url="";
		boolean flag=us.searchManager(mlVO);
		System.out.println(flag);
		if( flag ) {
			ss.setAttribute("manager_id", mlVO.getManager_id());
			url="redirect:mgr_home.do";
		} else {
			url="manager/home/jsp/manager_login";
		}
		return url;
	}//login
	
	@RequestMapping(value = "logout.do", method = GET)
	public String logout( SessionStatus ss, HttpSession session) {
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
	@RequestMapping(value = "/signUp2.do", method = POST)
	public String signUpPage2(HttpServletRequest request, Model model, UserInfoVO uiVO, HttpSession session) {
		String year=request.getParameter("year");
		String month=request.getParameter("month");
		String day=request.getParameter("day");
		String birth= year+"-"+month+"-"+day;
		uiVO.setBirth(birth);
		session.setAttribute("uiVO", uiVO);
		return "login/jsp/join_img";
	}
	
	/**
	 * 회원가입 3페이지 이동
	 * @param session
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/signUp3.do", method = POST)
	public String signUpPage3(HttpServletRequest request, Model model, HttpSession session, UserInfoVO uiVO, SessionStatus ss) {
		File saveDir=new File("E:/dev/workspace_spring/spring_mvc/src/main/webapp/upload/");
		int maxSize=1024*1024*20; //byte*kb*mb*gb;
//		String responseURL="redirect:user_mainhome.do";
		try {
			uiVO=(UserInfoVO)session.getAttribute("uiVO");
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(), 
					maxSize, "UTF-8", new DefaultFileRenamePolicy());
			//3. 파라메터를 받기( VO에 넣어야 한다면 VO를 생성하여 값을 넣는다.
			uiVO.setImg(mr.getFilesystemName("upfile"));
			//JSP에서 입력값을 보여주기위해 model에 VO를 넣는다.
			String rename=mr.getFilesystemName("upfile");
			if( rename == null ) {
				uiVO.setImg("basic.png");
			}
			us.addMember(uiVO);
//			responseURL="redirect:user_mainhome.do";
		} catch (IOException ie) {
			ie.printStackTrace();
		}
		model.addAttribute("joinId", uiVO.getId());
		ss.setComplete();
		session.invalidate();
		return "redirect:user_mainhome.do";
	}
	
	/**
	 * 아이디 중복확인
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/duplChkId.do", method = POST)
	public String duplChkId(String id) {
		String jsonObj = us.searchDuplChkId(id);
		return jsonObj;
	}
	
	/**
	 * 닉네임 중복 확인
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "duplChkNick.do", method = POST)
	public String duplChkNick(String nick) {
		String jsonObj = us.searchDuplChkNick(nick);
		return jsonObj;
	}
	
	@RequestMapping(value = "/forgotId.do", method = GET)
	public String forgotUserId() {
		return "login/jsp/find_id";
	}
	
	@RequestMapping(value = "/forgotPw.do", method = GET)
	public String forgotUserPw() {
		return "login/jsp/find_pass";
	}
	
	/**
	 * 아이디 찾기
	 * @param fiVO
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/forgotIdChk.do", method= POST) 
	public String forgotUserIdChk(ForgotIdVO fiVO, Model model) { 
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
