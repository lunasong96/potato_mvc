package potato.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping; 

@Controller
public class MgrHomeController {
	/**
	 * 包府磊 权 (措矫焊靛) 立加
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="mgr_home.do",method=GET)
	public String mgrHomeMove(HttpSession session,Model model) {
		String url="manager/home/jsp/manager_mainhome";

//		if(session.getAttribute("manager_id")==null) {
//			url="forward:managerlogin_page.do";
//		}
		return url;
	}//mgrHomeMove
}//class
