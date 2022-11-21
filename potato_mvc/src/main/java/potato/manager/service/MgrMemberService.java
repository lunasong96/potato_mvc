package potato.manager.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import potato.manager.dao.MgrMemberDAO;
import potato.manager.domain.MgrBlockReasonDomain;
import potato.manager.domain.MgrMemberDomain;
import potato.manager.vo.ManagerBlockVO;
import potato.manager.vo.MgrMemberVO;

@Component
public class MgrMemberService {

	@Autowired(required = false)
	private MgrMemberDAO mmDAO;
	
	//회원 조회
	public List<MgrMemberDomain> searchMember(MgrMemberVO mmVO,String memberCat,HttpSession session){
		List<MgrMemberDomain> list=null;
		
		if(memberCat == null || "1".equals(memberCat)) {
			list=mmDAO.selectMember(mmVO);
		}else if("2".equals(memberCat)) {
			list=mmDAO.selectQuitMember(mmVO);
		}else if("3".equals(memberCat)) {
			list=mmDAO.selectBlockMember(mmVO);
		}//end else 
		System.out.println( list );
		return list;
	}
	
	//회원 상세정보창 불러오기
	public MgrMemberDomain searchMemberInfo(String id) {
		MgrMemberDomain mmd=null;
		mmd=mmDAO.selectDetailInfo(id);
		
		return mmd;
	}
	
	//차단 사유 불러오기
	public List<MgrBlockReasonDomain> searchReason(){
		List<MgrBlockReasonDomain> list=null;
		list=mmDAO.selectReason();
		
		return list;
	}
	
	//회원 차단하기(차단회원 목록에 추가)
	public int addBlock(ManagerBlockVO mbVO) {
		int cnt=mmDAO.insertBlock(mbVO);
		
		return cnt;
	}
	
	//차단 해제
	public int removeBlock(String id) {
		
		return 0;
	}
	
	//페이징
	public int searchTotalPages(MgrMemberVO mmVO) {
		int cnt=mmDAO.selectTotalPages(mmVO);
		
		return cnt;
	}
	
	public int lastPage(int totalPages) {
		int lastPage=0;
		lastPage=(int)Math.ceil((double)totalPages/10); //10개씩 보여주기

		return lastPage;
	}
	
	public int startNum(int currentPage) {
		int startNum=0;
		startNum=currentPage-(currentPage-1) % 3;
		
		return startNum;
	}
	
	public int isLast(int startNum, int lastPage) {
		int isLast = 2; // 3페이직 씩 0,1,2
		if (startNum + 3 > lastPage) {
			isLast = lastPage - startNum;
		}
		return isLast;
	}
}
