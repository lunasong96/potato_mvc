package potato.manager.dao;

import org.apache.ibatis.session.SqlSession;

import potato.dao.config.MyBatisHandler;
import potato.manager.vo.MgrPassChangeVO;

public class MgrPassChangeDAO {
	
	public void updatePassword(MgrPassChangeVO mpcVO) {
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		int cnt=session.update("potato.manager.mgrPassChangeMapper.updateMgrPass",mpcVO);
		
		if(cnt!=0) {
			session.commit();
			System.out.println("비밀번호가 변경되었습니다.");
		}else {
			System.out.println("변경사항이 없습니다.");
		}
		
		mbh.closeHandler(session);
	}//updatePassword
}
