package potato.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.domain.UserDomain;
import potato.service.MyPageService;
import potato.service.UserService;
import potato.vo.LoginVO;
import potato.vo.MyPageBookmarkVO;
import potato.vo.MyPageMyInfoEditVO;
import potato.vo.MyPagePwEditVO;
import potato.vo.MyPageQuitVO;
@Controller
public class MyPageController {
	
	@Autowired(required = false)
	private MyPageService mps;
	@Autowired(required = false)
	private UserService us;
	
	//마이페이지 진입화면
	@RequestMapping(value="myPageIn.do", method=GET)
	public String myPageIn(HttpSession session) {
		String url="mypages/jsp/mypage_in";
		  if(session.getAttribute("id")==null) {
			url="forward:user_mainhome.do"; }
			 
		return "mypages/jsp/mypage_in";
	}//myPageIn
	
	//아이디, 비밀번호 확인
	@RequestMapping(value="chkIdPass.do",method=GET)
	public String chkIdPass(HttpSession session, LoginVO lVO) {
		UserDomain ud=null;
		ud=us.searchMember(lVO);
		return "redirect:my_info_edit.do";
	}//chkIdPass
	
	//내 정보 수정 폼
	@RequestMapping(value="my_info_edit.do",method = GET)
	public String myInfoEdit(HttpSession session, Model model ) {
		
		model.addAttribute("MyInfoList", mps.searchInfo((String)session.getAttribute("id")));
//		System.out.println(mps.searchInfo((String)session.getAttribute("id"))+"findMe");//확인용
		
		return "mypages/jsp/my_info_edit";
	}//myInfoEdit
	
	//내 정보 수정(처리) 기본이미지는 삭제되지 않게 처리하기
	@RequestMapping(value="my_info_edit_process.do",method = GET)
		public String myEditProcess(HttpSession session, MyPageMyInfoEditVO mmeVO, Model model) {
		
			return "redirect:my_info_edit";
	}//myInfoEditProcess
	
	//프로필 사진등록
	@RequestMapping(value = "addProfileImg.do",method=GET)
		public String addProfileImg(String string) {
			return "addProfileImg";
	}//addProfileImg
	
	//프로필 사진삭제
	@RequestMapping(value = "delProfileImg.do",method=GET)
		public String delProfileImg(String string) {
			return "delProfileImg";
	}//delProfileImg
	
	//비밀번호 수정 폼
	@RequestMapping(value="password_edit.do",method =GET)
		public String pwEdit(HttpSession session) {
			return "mypages/jsp/password_edit";
	}//pwEdit
	
	//비밀번호 수정 처리
	@RequestMapping(value = "password_edit_process.do" ,method= GET)
		public String pwEditProcess(MyPagePwEditVO peVO, Model model ) {
			int cnt=mps.modifyPw(peVO);
			model.addAttribute("cnt", cnt);
		
		return "forward:password_edit.do";
	}//pwEditProcess
	
	//회원 탈퇴 폼
	@RequestMapping(value = "unregister.do", method = {GET,POST})
		public String unregister(HttpSession session) {
			return "mypages/jsp/unregister";
	}//quit
	
	//회원 탈퇴 처리
	@RequestMapping(value = "unregister_process.do", method = GET)
		public String quitProcess(HttpSession session, MyPageQuitVO mqVO ) {
		int cnt=mps.updateQuit(mqVO);
		return "forward:user_mainhome.do";
	}//quitProcess
	
	
	//즐겨찾기한 휴게소
	@RequestMapping(value = "bookmark.do", method=GET)
		public String bookmark(HttpSession session, Model model) {
		//System.out.println(mps.searchBookmark((String)session.getAttribute("id"))+"findMe");
		model.addAttribute("bookmarklist",mps.searchBookmark((String)session.getAttribute("id")));
		return "mypages/jsp/bookmark";
	}//bookmark
	
	//즐겨찾기한 휴게소 삭제
	@RequestMapping(value = "delBookmark.do", method=GET)
		public String delBookmark(HttpSession session,MyPageBookmarkVO bVO, Model model) {
			int cnt=mps.removeBookmark(session, bVO);
			model.addAttribute("delBookmark", cnt);
		return "redirect:bookmark.do";
	}//bookmark
	
	
}//class
