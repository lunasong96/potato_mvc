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
	
	
	public List<RestDomain> searchRest(SearchRestVO srVO) {
		
		return null;
	}
	
	public List<LineDomain> searchLine() {
		List<LineDomain> list = null;
		
		list = mrDAO.selectLine();
		
		return list;
	}
	
	public int searchTotalRest(SearchRestVO srVO) {
		
		return 0;
	}
	
	public int lastPage(int totalReview) {
		
		return 0;
	}
	
	public int startNum(int curPage) {
		
		return 0;
	}
	
	//내가 원하는 보여줄 페이지 수를 먼저 넣고 만약에 초과할 경우 isLast를 매개변수로 새로 set
	public int isLast(int lastPage, int startNum) {
		
		return 0;
	}
	
	public List<DoDomain> searchDO() {
		
		return null;
	}
	
	public void addRest(RestVO rVO) {
		
	}
	
	public void addFood(List<FoodVO> list) {
		
	}
	
	public void addAmenity(List<AmenityVO> list) {
		
	}
	
	
	public RestDomain searchRestDetail(int restarea_idx) {
		
		return null;
	}
	
	//휴게소상세창과 수정창동시사용
	public List<FoodDomain> searchRestFood(int restarea_idx) {
		
		return null;
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
