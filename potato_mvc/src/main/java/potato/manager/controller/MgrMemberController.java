package potato.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.beans.factory.annotation.Autowired;

import potato.manager.service.MgrMemberService;
import potato.manager.vo.ManagerBlockVO;
import potato.manager.vo.MgrMemberVO;

@Controller
public class MgrMemberController {
	
	@Autowired(required = false)
	private MgrMemberService mms;
	
	//회원목록 조회
	@RequestMapping(value="/mgr_memberManagement.do",method= {GET,POST})
	public String memberList(MgrMemberVO mmVO,Model model) {
		
		//페이징 변수
		int totalPages = mms.searchTotalPages(mmVO);
		int lastPage = mms.lastPage(totalPages);
		int currentPage = mmVO.getPageFlag();
		int startNum = mms.startNum(currentPage);
		int isLast = mms.isLast(lastPage, startNum);
		
		//멤버 타입
		int memberType=mmVO.getMemberType();
		
		//view로 전송
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("startNum", startNum);
		model.addAttribute("isLast", isLast);
		model.addAttribute("currentPage", currentPage);
		
		model.addAttribute("memberType",memberType);
		model.addAttribute("memberList", mms.searchMember(mmVO));

		return "manager/member_management/jsp/member_management";
	}//memberList
	
	//회원 상세정보 팝업창 띄우기
	@RequestMapping(value="/mgr_memberInfoPopup.do",method=GET)
	public String memberInfoPopup(String id, Model model) {
		model.addAttribute("id",mms.searchMemberInfo(id));
		
		return "manager/member_management/jsp/member_info_popup";
	}//memberInfoPopup
	
	//회원 차단 팝업창 띄우기
	@RequestMapping(value="/mgr_memberBlockPopup.do",method=GET)
	public String memberBlockPopup(String id, Model model) {

		return "manager/member_management/jsp/member_block_popup";
	}//memberInfoPopup
	
	//회원 차단
	@RequestMapping(value="/mgr_block.do",method=GET)
	public String block(ManagerBlockVO mbVO) {
		
		return "";
	}
	
	//차단 해제
	@RequestMapping(value="/mgr_unblock.do",method=POST)
	public String unblock(String id) {
		
		return "";
	}
}//class
