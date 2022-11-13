package potato.service;

import java.util.List;

import potato.domain.DetailedDomain;
import potato.domain.RestAreaListDomain;
import potato.manager.vo.MgrMemberVO;
import potato.vo.ListMapPinVO;
import potato.vo.SearchFlagVO;

public class ListService {
	
	//전체 휴게소 목록 조회
	public List<RestAreaListDomain> searchAllList(SearchFlagVO sfVO){
		
		return null;
	}//searchAllList
	
	//고속도로 버튼 클릭 시 핀 불러오기
	public List<ListMapPinVO> searchHighwayPin(int restarea_idx){
		
		return null;
	}//searchHighwayPin
	
	//도 클릭시 휴게소 목록 조회
	public List<RestAreaListDomain> searchDoList(int do_idx){
		
		return null;
	}//searchDoList
	
	//도 휴게소 목록에서 검색, 정렬
	public List<RestAreaListDomain> searchArrangeDo(SearchFlagVO sfVO) {
		
		return null;
	}//searchArrangeDo
	
	//휴게소 목록에서 상세창 조회
	public DetailedDomain searchDetailPage(int restarea_idx) {
		
		return null;
	}//searchDetailPage
	
	//페이징
	//페이징
	public int searchTotalMember(MgrMemberVO mmVO) {
		
		return 0;
	}
	
	public int lastPage(int totalMember) {
		
		return 0;
	}
	
	public int startNum(int currentPage) {
		
		return 0;
	}
	
	public int isLast(int startNum, int lastPage) {
		
		return 0;
	}
	
	//연관검색어(ajax)
	public String searchKeywordList(String keyword) {
		
		return "";
	}
}
