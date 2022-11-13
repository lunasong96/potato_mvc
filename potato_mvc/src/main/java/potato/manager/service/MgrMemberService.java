package potato.manager.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import potato.manager.domain.MgrBlockReasonDomain;
import potato.manager.domain.MgrMemberDomain;
import potato.manager.vo.ManagerBlockVO;
import potato.manager.vo.MgrMemberVO;

public class MgrMemberService {

	//회원 조회
	public List<MgrMemberDomain> searchMember(MgrMemberVO mmVO, HttpSession session){
		
		return null;
	}
	
	//아이디로 회원 검색
	public MgrMemberDomain searchId(String id) {
		
		return null;
	}
	
	//차단 사유 불러오기
	public List<MgrBlockReasonDomain> searchReason(){
		
		return null;
	}
	
	//회원 차단하기(차단회원 목록에 추가)
	public int addBlock(ManagerBlockVO mbVO) {
		
		return 0;
	}
	
	//차단 해제
	public int removeBlock(String id) {
		
		return 0;
	}
	
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
}
