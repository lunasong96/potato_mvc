package potato.dao;

import java.util.List;

import potato.domain.DetailedDomain;
import potato.domain.RestAreaListDomain;
import potato.vo.ListMapPinVO;
import potato.vo.SearchFlagVO;

public class ListDAO {
	
	//전체휴게소 목록 보여주기
	public List<RestAreaListDomain> selectAllRestAreaList(SearchFlagVO sfVO){
		
		return null;
	}//selectAllRestAreaList
	
	//고속도로 버튼 클릭시 핀 불러오기
	public List<String> selectHighwayPin(ListMapPinVO lmpVO){
		
		return null;
	}//selectHighwayPin
	
	//도 클릭시 휴게소 목록 보여주기
	public List<RestAreaListDomain> selectDoList(int do_idx){
		
		return null;
	}//selectDoList
	
	//도 휴게소 목록에서 검색, 정렬
	public List<RestAreaListDomain> selectSearchArrangeDo(SearchFlagVO sfVO){
		
		return null;
	}
	
	//휴게소 목록에서 상세창으로 이동
	public DetailedDomain selectDetailPage(int restarea_idx) {
		
		return null;
	}
	
	//페이징
	public int selectTotalPage(SearchFlagVO sfVO) {
		
		return 0;
	}
	
	//연관검색어(ajax)
	public String searchKeywordList(String keyword) {
		
		return null;
	}
}
