package potato.dao;

import potato.dao.config.MyBatisHandler;
import potato.vo.ForgotIdVO;

import potato.vo.ForgotPwVO;
import potato.vo.LoginVO;
import potato.vo.ManagerLoginVO;
import potato.vo.UserInfoVO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

/**
 *	유저의 로그인, 회원가입 관련 DAO
 * @author user
 */
@Component
public class UserDAO {
	//mapper namespace 변수 선언
	public static final String UserMapper="potato.userMapper.";
	
	/**
	 * 유저 회원가입
	 * @param uiVO
	 */
	public int insertMember(UserInfoVO uiVO) {
		int cnt = 0;
		
		//1. Handler 얻기
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2. 쿼리실행
		cnt=ss.insert(UserMapper+"insertMember", uiVO);
		//3. 끊기
		mbh.closeHandler(ss);
		
		return cnt;
	}//insertMember
	
	/**
	 * 유저 로그인
	 * @param lVO
	 * @return
	 */
	public String selectLogin(LoginVO lVO) {
		String result;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		result =ss.selectOne(UserMapper+"selectMemberLogin", lVO);
		mbh.closeHandler(ss);
		return result;
	}//selectLogin
	
	/**
	 * 매니저 로그인
	 * @param mlVO
	 * @return
	 */
	public String selectManager(ManagerLoginVO mlVO) {
		String result;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		result = ss.selectOne(UserMapper+"selectManagerLogin", mlVO);
		mbh.closeHandler(ss);
		return result;
	}//selectManager
	
	/**
	 * 아이디 중복확인
	 * @param id
	 * @return 
	 */
	public String selectMDuplChkId(String id) {
		String result = "";
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		
		result = ss.selectOne(UserMapper+"selectDuplChkId", id);
		mbh.closeHandler(ss);
		return result;
	}//selectMDuplChkId
	
	/**
	 * 닉네임 중복 검사
	 * @param nick
	 * @return 
	 */
	public String selectMDuplChkNick(String nick) {
		String result ="";
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		
		result = ss.selectOne(UserMapper+"selectDuplChkNick", nick);
		mbh.closeHandler(ss);
		return result;
	}//selectMDuplChkNick
	
	public String selectId(ForgotIdVO fiVO) {
		String id="";
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		id= ss.selectOne(UserMapper+"selectForgotId", fiVO);
		
		mbh.closeHandler(ss);
		
		return id;
	}//selectId
	
	/**
	 * 비밀번호 찾기
	 * @param fpVO
	 * @return
	 */
	public String selectPw(ForgotPwVO fpVO) {
		String pw="";
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		
		pw= ss.selectOne(UserMapper+"selectForgotPw", fpVO);
		mbh.closeHandler(ss);
		
		return pw;
	}//selectId
	
	/**
	 * 임시비밀번호 업데이트
	 * @param fpVO
	 * @return
	 */
	public int updatePw(ForgotPwVO fpVO) {
		int cnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		cnt = ss.update(UserMapper, fpVO);
		mbh.closeHandler(ss);
		return cnt;
	}//updatePw
	
}//class
