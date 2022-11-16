package potato.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.manager.vo.SearchRestVO;

@Controller
public class ManagerRestareaController {
	
	@RequestMapping(value="manager_restarea.do",method=GET)
	public String restMain(SearchRestVO srVO, Model model, HttpSession session) {
		String url="manager/rest_management/jsp/manager_rest_management";
		/*
		 * 세션처리하면 주석풀기
		if(session.getAttribute("manager_id")==null) {
			url="forward:managerlogin_page.do";
		}
		*/
		
		return url;
	}
	
	@RequestMapping(value="manager_writePopup.do", method=GET)
	public String openWriteRest(Model model) {
		
		return "manager/rest_management/jsp/manager_rest_write_popup";
	}
	
	@RequestMapping(value="manager_rest_add.do", method=GET)
	public String newRest(HttpServletRequest request) {
		
		return "manager/rest_management/jsp/manager_rest_write_popup";
	}
	
	@RequestMapping(value="manager_restdetailPopup.do",method=GET)
	public String restDetailPopup() {//매개값으로 int 휴개소 인덱스랑 model추가
		
		return "manager/rest_management/jsp/rest_popup";
	}
	
	@RequestMapping(value="manager_rest_modifyPopup.do",method=GET)
	public String restModifyPopup() {//매개값으로 int 휴개소 인덱스랑 model추가
		
		return "manager/rest_management/jsp/manager_rest_modify_popup";
	}
	
	@RequestMapping(value="manager_rest_modify.do")
	public String restModify(HttpServletRequest request) {
		
		return "manager/rest_management/jsp/manager_rest_modify_popup";
	}
	
	@RequestMapping(value="manager_removeRest.do",method=GET)
	public String delRest(int restarea_idx) {
		
		return "manager/rest_management/jsp/rest_popup";
	}

}
