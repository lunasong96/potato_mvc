package potato.manager.dao;

import java.util.List;

import potato.manager.domain.AmenityDomain;
import potato.manager.domain.DoDomain;
import potato.manager.domain.FoodDomain;
import potato.manager.domain.LineDomain;
import potato.manager.domain.RestDomain;
import potato.manager.vo.AmenityVO;
import potato.manager.vo.FoodVO;
import potato.manager.vo.RestVO;
import potato.manager.vo.SearchRestVO;

public class MgrRestDAO {
	
	public List<RestDomain> selectRest(SearchRestVO srVO) {
		
		return null;
	}
	
	public List<LineDomain> selectLine() {
		
		return null;
	}
	
	public int selectTotalRest(SearchRestVO srVO) {
		
		return 0;
	}
	
	public List<DoDomain> selectDo() {
		
		return null;
	}
	
	public void insertRest(RestVO rVO) {
		
		
	}
	
	public void insertFood(List<FoodVO> list) {
		
	}
	
	public void insertAmenity(List<AmenityVO> list) {
		
	}
	
	public RestDomain selectRestDetail(int restarea_idx) {
		
		return null;
	}
	
	public List<FoodDomain> selectRestFood(int restarea_idx) {
		
		return null;
	}
	
	public RestDomain selectRestInfo(int restarea_idx) {
		
		return null;
	}
	
	public List<FoodDomain> selectFoodInfo(int restarea_idx ) {
		
		return null;
	}
	
	public List<AmenityDomain> selectAmenityInfo(int restarea_idx) {
		
		return null;
	}
	
	public int udateRest(RestVO rVO) {
		
		return 0;
	}
	
	public int deleteRest(int restarea_idx) {
		
		return 0;
	}
	
	
}
