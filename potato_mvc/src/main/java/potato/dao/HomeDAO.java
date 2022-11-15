package potato.dao;

import java.util.List;

import potato.domain.UserHomeMapDomain;
import potato.domain.UserHomeSliderDomain;
import potato.vo.UserHomeVisitorVO;

public class HomeDAO {
	
	//슬라이드 휴게소 링크
	//전라남도
	public List<UserHomeSliderDomain> selectRestInx1() {
		return null;
	}
	
	//수도권
	public List<UserHomeSliderDomain> selectRestInx2() {
		return null;
	}
	
	//강원도
	public List<UserHomeSliderDomain> selectRestInx3() {
		return null;
	}
	
	//충청북도
	public List<UserHomeSliderDomain> selectRestInx4() {
		return null;
	}
	
	//지도 핀 설정
	public List<UserHomeMapDomain> selectMapPin() {
		return null;
	}
	
	//방문자수 집계
	public int insertVisitor(String ip) {
		return 0;
	}

}
