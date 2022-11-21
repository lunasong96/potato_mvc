package potato.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.manager.domain.MgrBlockReasonDomain;
import potato.manager.domain.MgrMemberDomain;
import potato.manager.vo.ManagerBlockVO;
import potato.manager.vo.MgrMemberVO;

@Component
public class MgrMemberDAO {
	
	//회원 목록 조회
	public List<MgrMemberDomain> selectMember(MgrMemberVO mmVO){
		List<MgrMemberDomain> list=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		list=session.selectList("potato.manager.mgrMemberMapper.memberList",mmVO);
		
		mbh.closeHandler(session);
		
		return list;
	}
	
	//회원 상세 정보 팝업창
	public MgrMemberDomain selectDetailInfo(String id) {
		MgrMemberDomain mmd=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		mmd=session.selectOne("potato.manager.mgrMemberMapper.infoPopup",id);
		
		mbh.closeHandler(session);
		
		return mmd;
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
	public int selectTotalPages(MgrMemberVO mmVO) {
		
		return 0;
	}
}
