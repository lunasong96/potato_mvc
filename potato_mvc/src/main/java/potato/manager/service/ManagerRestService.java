package potato.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.manager.dao.MgrRestDAO;
import potato.manager.domain.DoDomain;
import potato.manager.domain.FoodDomain;
import potato.manager.domain.LineDomain;
import potato.manager.domain.RestDomain;
import potato.manager.vo.AmenityVO;
import potato.manager.vo.FoodVO;
import potato.manager.vo.RestVO;
import potato.manager.vo.SearchRestVO;

@Component
public class ManagerRestService {
	@Autowired(required = false)
	private MgrRestDAO mrDAO;
	
	//휴게소가져오기
	public List<RestDomain> searchRest(SearchRestVO srVO) {
		List<RestDomain> list = mrDAO.selectRest(srVO);
		return list;
	}
	
	//노선가져오기
	public List<LineDomain> searchLine() {
		List<LineDomain> list = mrDAO.selectLine();
		return list;
	}
	
	//총휴게소가져오기
	public int searchTotalRest(SearchRestVO srVO) {
		int totalReview = mrDAO.selectTotalRest(srVO);
		return totalReview;
	}
	
	//마지막페이지구하기
	public int lastPage(int totalReview) {
		int lastPage = (int)Math.ceil((double)totalReview/10);
		return lastPage ;
	}
	
	//현제 페이지단의 시작페이지
	public int startNum(int curPage) {
		int startNum = curPage-(curPage-1)%3;
		return startNum;
	}
	
	//내가 원하는 보여줄 페이지 수를 먼저 넣고 만약에 초과할 경우 isLast를 매개변수로 새로 set
	public int isLast(int lastPage, int startNum) {
		int isLast=2;
		if(startNum +3 > lastPage) {
			isLast = lastPage - startNum;
		}
		return isLast;
	}
	
	//휴게소 상세
	public RestDomain searchRestDetail(int restarea_idx) {
		RestDomain rd = mrDAO.selectRestDetail(restarea_idx);
		return rd;
	}
	
	//휴게소상세창과 수정창동시사용
	public List<FoodDomain> searchRestFood(int restarea_idx) {
		List<FoodDomain> list = mrDAO.selectRestFood(restarea_idx);
		return list;
	}
	
	//도가져오기
	public List<DoDomain> searchDo() {
		List<DoDomain> list = mrDAO.selectDo();
		return list;
	}
	
	//휴게소추가
	public int addRest(RestVO rVO) {
		int cnt = mrDAO.insertRest(rVO);
		return cnt;
	}
	
	//추가된휴게소의 인덱스가져오기
	public int searchNewIdx(RestVO rVO) {
		int idx = mrDAO.selectNewIdx(rVO);
		return idx;
	}
	
	//휴게소 음식추가하기
	public int addFood(List<FoodVO> list) {
		int cnt = mrDAO.insertFood(list);
		return cnt;
	}
	
	//휴게소 편의시설추가하기
	public int addAmenity(AmenityVO amVO) {
		int cnt = mrDAO.insertAmenity(amVO);
		return cnt;
	}
	
	
	public RestDomain searchRestInfo(int restarea_idx) {
		
		return null;
	}
		
	public int modifyRest(RestVO rVO) {
		
		return 0;
	}
	
	public int removeRest(int restarea_idx) {
		
		return 0;
	}
}
