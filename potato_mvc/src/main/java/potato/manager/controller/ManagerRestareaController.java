package potato.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import static java.lang.Integer.parseInt;
import static java.lang.Double.parseDouble;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import potato.manager.service.ManagerRestService;
import potato.manager.vo.AmenityVO;
import potato.manager.vo.FoodVO;
import potato.manager.vo.RestVO;
import potato.manager.vo.SearchRestVO;

@Controller
public class ManagerRestareaController {
	@Autowired(required = false)
	private ManagerRestService mrs;
	
	
	@RequestMapping(value="manager_restarea.do",method= {GET, POST})
	public String restMain(SearchRestVO srVO, Model model, HttpSession session) {
		String url="manager/rest_management/jsp/manager_rest_management";
		/*
		 * 세션처리하면 주석풀기
		if(session.getAttribute("manager_id")==null) {
			url="forward:managerlogin_page.do";
		}
		*/
		
		//페이징
		int totalReview = mrs.searchTotalRest(srVO);
		int lastPage = mrs.lastPage(totalReview);
		int curPage = srVO.getPageFlag();
		int startNum = mrs.startNum(curPage);
		int isLast = mrs.isLast(lastPage, startNum);
		
		//view전송
		model.addAttribute("restList", mrs.searchRest(srVO));
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("curPage", curPage);
		model.addAttribute("startNum", startNum);
		model.addAttribute("isLast", isLast);
		model.addAttribute("lineList", mrs.searchLine());
		return url;
	}
	
	
	@RequestMapping(value="manager_restdetailPopup.do",method=POST)
	public String restDetailPopup(int restarea_idx, Model model) {
		model.addAttribute("detail", mrs.searchRestDetail(restarea_idx));
		model.addAttribute("foodList", mrs.searchRestFood(restarea_idx));
		return "manager/rest_management/jsp/rest_popup";
	}
	
	@RequestMapping(value="manager_writePopup.do", method=GET)
	public String openWriteRest(Model model) {
		model.addAttribute("lineList", mrs.searchLine());
		model.addAttribute("doList", mrs.searchDo());
		return "manager/rest_management/jsp/manager_rest_write_popup";
	}
	
	@RequestMapping(value="manager_rest_add.do", method=POST)
	public String newRest(HttpServletRequest request) {
		File saveDir = new File("C:/Users/user/git/potato_mvc/potato_mvc/src/main/webapp/css/images/");
		int maxSize=1024*1024*20;
		try {
			MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
			RestVO rVO = new RestVO();
			
			//휴게소 테이블 입력 파라메터 처리
			rVO.setName(mr.getParameter("restName"));
			rVO.setImg(mr.getFilesystemName("upFile"));
			rVO.setLat(parseDouble(mr.getParameter("lat")));
			rVO.setLng(parseDouble(mr.getParameter("lng")));
			rVO.setDo_idx(parseInt(mr.getParameter("doIdx")));
			rVO.setLine_idx(parseInt(mr.getParameter("lineIdx")));
			rVO.setTel(mr.getParameter("tel"));
			rVO.setCarwash_chk(mr.getParameter("washChk"));
			if(mr.getParameter("washChk") == null) {
				rVO.setCarwash_chk("N");
			}
			rVO.setRepair_chk(mr.getParameter("repairChk"));
			if(mr.getParameter("repairChk") == null) {
				rVO.setRepair_chk("N");
			}
			rVO.setCargolounge_chk(mr.getParameter("cargoChk"));
			if(mr.getParameter("cargoChk") == null) {
				rVO.setCargolounge_chk("N");
			}
			
			//휴게소 테이블 성공여부확인
			int restResultCnt = mrs.addRest(rVO);
			
			//휴게소테이블에 추가성공시 음식, 시설테이블에 추가
			if(restResultCnt == 1) {
				int idx = mrs.searchNewIdx(rVO); // 추가된 인덱스반환
				
				//음식 테이블용 파라메터
				List<FoodVO> foodList = new ArrayList<FoodVO>();
				FoodVO fVO = null;
				for(int i =0; i<mr.getParameterValues("foodName").length; i ++) {
					fVO = new FoodVO();
					fVO.setRestarea_idx(idx);
					fVO.setFood_idx(i+1);
					fVO.setImg(mr.getFilesystemName("foodFile"+i));
					fVO.setName(mr.getParameterValues("foodName")[i]);
					fVO.setPrice(parseInt(mr.getParameterValues("foodPrice")[i]));
					fVO.setContents(mr.getParameterValues("foodConts")[i]);
					fVO.setIngredient(mr.getParameterValues("foodIng")[i]);
					if(mr.getParameter("radio"+i).equals("main")) {
						fVO.setMain_chk("Y");
						fVO.setRec_chk("N");
					} else if(mr.getParameter("radio"+i).equals("good")) {
						fVO.setMain_chk("N");
						fVO.setRec_chk("Y");
					} else {
						fVO.setMain_chk("N");
						fVO.setRec_chk("N");
					}
					foodList.add(fVO);
				}//end for
				mrs.addFood(foodList);
				
				//휴게소 테이블용 파라메터
				AmenityVO amVO = new AmenityVO();
				amVO.setRestarea_idx(idx);
				if(mr.getParameterValues("restIcons") != null) {
					amVO.setRestIcons(mr.getParameterValues("restIcons"));
				}
				
				if(mr.getParameterValues("gasIcons") != null) {
					amVO.setGasIcons(mr.getParameterValues("gasIcons"));
				}
				
				if(mr.getParameterValues("restIcons") != null || mr.getParameterValues("gasIcons") != null) {
					mrs.addAmenity(amVO);
				}
				request.setAttribute("result", "success");
			}
			
		} catch(IOException ie) {
			ie.printStackTrace();
		}
		
		
		return "manager/rest_management/jsp/manager_rest_write_popup";
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
