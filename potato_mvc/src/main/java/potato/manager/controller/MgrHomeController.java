package potato.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.manager.service.MgrHomeService; 

@Controller
public class MgrHomeController {
	
	@Autowired(required = false)
	private MgrHomeService mhs;
	
	/**
	 * 관리자 홈 (대시보드) 접속
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="mgr_home.do",method=GET)
	public String mgrHomeMove(HttpSession session,Model model) {

//		if(session.getAttribute("manager_id")==null) {
//			url="forward:managerlogin_page.do";
//		}
		
		//오늘 신고 수
		model.addAttribute("reportCnt", mhs.searchReportCnt());
		//인기 휴게소
		model.addAttribute("popOne", mhs.searchPopOne());
		//관심 휴게소
		model.addAttribute("bookmark", mhs.searchBookmark());
		//방문자 현황(어제)
		int visitFlag = 2;
		model.addAttribute("yesvisit", mhs.searchVisitorCnt(visitFlag));
		//방문자 현황(오늘)
		visitFlag=1;
		model.addAttribute("tovisit", mhs.searchVisitorCnt(visitFlag));
		//방문자 현황(총)
		visitFlag=0;
		model.addAttribute("visitorCnt", mhs.searchVisitorCnt(visitFlag));
		//회원 현황(전체)
		model.addAttribute("allMemCnt", mhs.searchAllMem());
		//회원 현황(신규)
		model.addAttribute("newMemCnt", mhs.searchNewMemCnt());
		//회원 현황(탈퇴)
		model.addAttribute("quitMemCnt", mhs.searchQuitMem());
		//인기 휴게소 랭킹
		model.addAttribute("rank", mhs.searchPopAll());
		
		return "manager/home/jsp/manager_mainhome";
	}//mgrHomeMove
}//class
