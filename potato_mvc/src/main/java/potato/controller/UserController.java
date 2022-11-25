package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
	

	/**
	 * 로그인 페이지 이동
	 * @return
	 */
	@RequestMapping(value = "/login_page.do", method = GET)
	public String loginPage(HttpSession session) {
		session.invalidate();
		return "login/jsp/login";
	}//loginPage
	
	@RequestMapping(value = "/managerlogin_page.do", method = GET)
	public String managerloginPage() {
		return "manager/home/jsp/manager_login";
	}//loginPage
	
	@ResponseBody
	@RequestMapping(value = "/login.do", method = POST)
	public String login(LoginVO lVO, HttpSession session, String id, String pass) {
		UserDomain ud=null;
		lVO.setId(id);
		lVO.setPass(pass);
		ud=us.searchMember(lVO);
		session.setAttribute("id", ud.getId());
		session.setAttribute("nick", ud.getNick());
		session.setAttribute("img", ud.getImg());
		JSONObject jsonObj=new JSONObject();
		jsonObj.put("id", ud.getId());
		jsonObj.put("nick", ud.getNick());
		jsonObj.put("quit", ud.getQuit());
		jsonObj.put("img", ud.getImg());
		return jsonObj.toJSONString();
	}//login
	
	@RequestMapping(value = "/managerlogin.do", method = POST)
	public String managerlogin(ManagerLoginVO mlVO, HttpSession ss, Model	m) {
		String url="";
		boolean flag=us.searchManager(mlVO);
		System.out.println(flag);
		if( flag ) {
			ss.setAttribute("manager_id", mlVO.getManager_id());
			url="redirect:mgr_home.do";
		} else {
			url="manager/home/jsp/manager_login";
			ss.setAttribute("login_flag", false);
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
	
	
	@RequestMapping(value = "/signUp4.do", method = GET)
	public String signUp4(SessionStatus ss, HttpSession session) {
		ss.isComplete();
		session.invalidate();
		return "redirect:user_mainhome.do";
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
		if( month.length() == 1 ) {
			month="0"+month;
		}
		String day=request.getParameter("day");
		if( day.length() == 1 ) {
			day="0"+day;
		}
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
		File saveDir=new File("C:/Users/user/git/potato_mvc/potato_mvc/src/main/webapp/css/images/");
		int maxSize=1024*1024*20; //byte*kb*mb*gb;
		String url="redirect:user_mainhome.do";
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
		} catch (IOException ie) {
			ie.printStackTrace();
		}
		ss.setComplete();
		session.invalidate();
		int cnt=us.addMember(uiVO);
		if( cnt == 1 ) {
			model.addAttribute("joinId", uiVO.getId());
			url="login/jsp/join_end";
		}
		return url;
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
	public String forgotUserId(HttpSession session) {
		session.invalidate();
		return "login/jsp/find_id";
	}
	
	@RequestMapping(value = "/forgotPw.do", method = GET)
	public String forgotUserPw(HttpSession session) {
		session.invalidate();
		return "login/jsp/find_pass";
	}
	
	@RequestMapping(value = "/forgotIdPop.do", method = GET)
	public String forgotIdPop() {
		return "login/jsp/find_id_popup";
	}
	
	@RequestMapping(value = "/forgotPwPop.do", method = GET)
	public String forgotPwPop() {
		return "login/jsp/find_pass_popup";
	}
	
	/**
	 * 아이디 찾기
	 * @param fiVO
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/forgotIdChk.do", method= POST) 
	public String forgotUserIdChk(ForgotIdVO fiVO, HttpSession session, String name, String birth, String phone) { 
		String id="";
		fiVO.setName(name);
		fiVO.setBirth(birth);
		fiVO.setPhone(phone);
		id=us.searchId(fiVO);
		session.setAttribute("findId", id);
		JSONObject jsonObj=new JSONObject();
		jsonObj.put("id", id);
		return jsonObj.toJSONString();
	}
	 
	
	@ResponseBody
	@RequestMapping(value = "/forgotPwChk.do", method = POST)
	public String forgotUserPwChk(ForgotPwVO fpVO, HttpSession session, String id, String name, String phone) {
		String pass="";
		fpVO.setId(id);
		fpVO.setName(name);
		fpVO.setPhone(phone);
		pass=us.searchPw(fpVO);
		session.setAttribute("findPw", pass);
		JSONObject jsonObj=new JSONObject();
		jsonObj.put("pass", pass);
		return jsonObj.toJSONString();
	}
	
}//class
