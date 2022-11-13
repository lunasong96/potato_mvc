package potato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import potato.vo.SearchFlagVO;

@Controller
public class ListController {
	//헤더
	@RequestMapping(value="/header.do",method=GET)
	public String userHeader() {
		
		return "common/jsp/user_header";
	}
	
	//전체 휴게소 목록
	@RequestMapping(value="/allList.do", method=GET)
	public String allRestAreaList(SearchFlagVO sfVO, Model model) {
		
		return "list/jsp/list_view_all";
	}//allRestAreaList
	
	//고속도로별) 버튼 클릭시 해당 도로 핀 불러오기
	@RequestMapping(value="/mapPin.do",method=GET)
	public String highwayMapPin(Model model) {
		
		return "list/jsp/highway_list";
	}
	
	//도별 휴게소(지도)
	@RequestMapping(value="doMap.do",method=GET)
	public String doMap() {
		
		return "list/jsp/do_list";
	}
	
	//클릭한 도 휴게소 목록으로 이동
	@RequestMapping(value="doList.do",method=GET)
	public String doRestAreaList(int do_idx, Model model) {
		
		return "list/jsp/do_list_details";
	}

	//도 휴게소에서 검색, 정렬
	@RequestMapping(value="searchArrange.do",method=GET)
	public String doSearchArrange(SearchFlagVO sfVO, Model model) {
		
		return "list/jsp/list_view_all";
	}
	
	//휴게소 목록에서 또는 고속도로 지도에서 핀 클릭해서 상세창 이동
	//매개변수 int restarea_idx, Model model
	@RequestMapping(value="listToDetail.do",method=GET)
	public String detailPage() {
		
		return "detailed/jsp/user_detailed";
	}
	
	//ex-FOOD //매개변수 : int restarea_idx
	@RequestMapping(value="exFood.do",method=GET)
	public String exFoodList() {
		
		return "list/jsp/exfood_list";
	}//exFoodList
	
	//연관 검색어(ajax)
	@RequestMapping(value="relatedKeyword.do",method = GET)
	public String keywordList(String keyword) {
		
		return "list/jsp/list_view_all";
	}
	
}
