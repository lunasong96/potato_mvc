package potato.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import potato.manager.vo.ManagerBlockVO;
import potato.manager.vo.MgrMemberVO;

@Controller
public class MgrMemberController {
	
	//회원목록 조회
	@RequestMapping(value="/mgr_memberManagement.do",method=POST)
	public String memberList(MgrMemberVO mVO,Model model) {
		
		return "manager/member_management/jsp/member_management";
	}//memberList
	
	//회원 상세정보 팝업창 띄우기
	@RequestMapping(value="/mgr_memberInfoPopup.do",method=POST)
	public String memberInfoPopup(String id, Model model) {
		
		return "manager/member_management/jsp/member_info_popup";
	}//memberInfoPopup
	
	//회원 차단창 띄우기
	@RequestMapping(value="/mgr_memberBlockPopup.do",method=POST)
	public String memberBlockPopup(String id, Model model) {
		
		return "manager/member_management/jsp/member_block_popup";
	}//memberInfoPopup
	
	//회원 차단
	@RequestMapping(value="/mgr_block.do",method=POST)
	public String block(ManagerBlockVO mbVO) {
		
		return "";
	}
	
	//차단 해제
	@RequestMapping(value="/mgr_unblock.do",method=POST)
	public String unblock(String id) {
		
		return "";
	}
}//class
