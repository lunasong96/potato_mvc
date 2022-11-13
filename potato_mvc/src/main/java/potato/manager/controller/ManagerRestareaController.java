package potato.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import potato.manager.vo.SearchRestVO;

@Controller
public class ManagerRestareaController {
	
	@RequestMapping(value="manager_restarea.do",method=GET)
	public String restMain(SearchRestVO srVO, Model model) {
		
		return "manager/rest_management/jsp/manager_rest_management";
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
	public String restDetailPopup() {//¸Å°³°ªÀ¸·Î int ÈÞ°³¼Ò ÀÎµ¦½º¶û modelÃß°¡
		
		return "manager/rest_management/jsp/rest_popup";
	}
	
	@RequestMapping(value="manager_rest_modifyPopup.do",method=GET)
	public String restModifyPopup() {//¸Å°³°ªÀ¸·Î int ÈÞ°³¼Ò ÀÎµ¦½º¶û modelÃß°¡
		
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
