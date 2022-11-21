package potato.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
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
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		List<RestDomain> list = ss.selectList("potato.manager.rest.selectRestarea", srVO);
		mbh.closeHandler(ss);
		return list;
	}
	
	public List<LineDomain> selectLine() {
		List<LineDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		list = ss.selectList("potato.manager.rest.getLine");
		mbh.closeHandler(ss);
		return list;
	}
	
	public int selectTotalRest(SearchRestVO srVO) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		int totalReview = ss.selectOne("potato.manager.rest.selectRestTotal", srVO);
		mbh.closeHandler(ss);
		return totalReview;
	}
	
	public RestDomain selectRestDetail(int restarea_idx) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		RestDomain rd = ss.selectOne("potato.manager.rest.selectRestDetail", restarea_idx); 
		mbh.closeHandler(ss);
		return rd;
	}
	
	//휴게소상세창과 수정창동시사용
	public List<FoodDomain> selectRestFood(int restarea_idx) {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		List<FoodDomain> list = ss.selectList("potato.manager.rest.selectFood", restarea_idx);
		mbh.closeHandler(ss);
		return list;
	}
	
	public List<DoDomain> selectDo() {
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		List<DoDomain> list = ss.selectList("potato.manager.rest.getDo");
		mbh.closeHandler(ss);
		return list;
	}
	
	public void insertRest(RestVO rVO) {
		
	}
	
	public void insertFood(List<FoodVO> list) {
		
	}
	
	public void insertAmenity(List<AmenityVO> list) {
		
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
