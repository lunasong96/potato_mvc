package potato.manager.dao;

import java.util.List;

import potato.manager.domain.MgrBlockReasonDomain;
import potato.manager.domain.MgrMemberDomain;
import potato.manager.vo.ManagerBlockVO;
import potato.manager.vo.MgrMemberVO;

public class MgrMemberDAO {
	
	//회원 목록 조회
	public List<MgrMemberDomain> selectMember(MgrMemberVO mmVO){
		
		return null;
	}
	
	//회원 상세 정보 팝업창
	public MgrMemberDomain selectDetailInfo(String id) {
		
		return null;
	}
	
	//차단 팝업창) 차단 사유 불러오기
	public List<MgrBlockReasonDomain> selectReason(){
		
		return null;
	}
	
	//회원 차단
	public void insertBlock(ManagerBlockVO mbVO) {
		
	}
	
	//차단 해제
	public int deleteBlock(String id) {
		
		return 0;
	}
	
	//페이징
	public int searchTotalMember(MgrMemberVO mmVO) {
		
		return 0;
	}
}
