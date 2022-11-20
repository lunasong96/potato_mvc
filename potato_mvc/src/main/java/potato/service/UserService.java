package potato.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;

import potato.dao.UserDAO;
import potato.vo.ForgotIdVO;
import potato.vo.ForgotPwVO;
import potato.vo.LoginVO;
import potato.vo.ManagerLoginVO;
import potato.vo.UserInfoVO;

/**
 * 유저 로그인/회원가입 관련 서비스
 * @author user
 */
@Component
public class UserService {
	
	@Autowired(required = false)
	private UserDAO uDAO;
	
	/**
	 * 유저 로그인
	 * @param lVO
	 * @return
	 */
	@Autowired(required = false)
	public String searchMember(LoginVO lVO) {
		
		String id=null;
		id=uDAO.selectLogin(lVO);
		return id;
	}
	
	/**
	 * 매니저 로그인
	 * @param mlVO
	 * @return
	 */
	public boolean searchManager(ManagerLoginVO mlVO) {
		boolean flag=false;
		return flag;
	}
	
	/**
	 * 유저 회원가입
	 * @param uiVO
	 * @return
	 */
	public String addMember(UserInfoVO uiVO) {
		return null;
	}
	
	/**
	 * 아이디 중복확인
	 * @param id
	 * @return
	 */
	public  boolean searchDuplChkId(String id) {
		return false;
	}
	
	/**
	 * 닉네임 중복확인
	 * @param nick
	 * @return
	 */
	public  boolean searchDuplChkNick(String nick) {
		return false;
	}
	
	public String  searchId(ForgotIdVO fiVO) {
		String id="";
		id=uDAO.selectId(fiVO);
		return id;
	}//searchId
	
	/**
	 * 비밀번호 찾기
	 * @param fpVO
	 * @return
	 */
	public String searchPw(ForgotPwVO fpVO) {
		String pass="";
		pass=uDAO.selectPw(fpVO);
		return pass;
	}//searchPw
	
}//class
