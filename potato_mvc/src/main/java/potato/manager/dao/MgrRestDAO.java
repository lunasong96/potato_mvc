package potato.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.manager.domain.AmenityDomain;
import potato.manager.domain.DoDomain;
import potato.manager.domain.FoodDomain;
import potato.manager.domain.LineDomain;
import potato.manager.domain.RestDomain;
import potato.manager.vo.AmenityVO;
import potato.manager.vo.FoodVO;
import potato.manager.vo.RestVO;
import potato.manager.vo.SearchRestVO;

@Component
public class MgrRestDAO {
	
	public List<RestDomain> selectRest(SearchRestVO srVO) {
		
		return null;
	}
	
	public List<LineDomain> selectLine() {
		List<LineDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		list = ss.selectList("potato.manager.restarea.getLine");
		
		mbh.closeHandler(ss);
		return list;
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
	
	//휴게소상세창과 수정창동시사용
	public List<FoodDomain> selectRestFood(int restarea_idx) {
		
		return null;
	}
	
	public RestDomain selectRestInfo(int restarea_idx) {
		
		return null;
	}
		
	public int updateRest(RestVO rVO) {
		
		return 0;
	}
	
	public int deleteRest(int restarea_idx) {
		
		return 0;
	}
	
	
}
