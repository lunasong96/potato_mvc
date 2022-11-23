package potato.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import potato.dao.config.MyBatisHandler;
import potato.domain.MyReviewDomain;
import potato.domain.OtherReviewDomain;
import potato.vo.MyReviewVO;
import potato.vo.OtherReviewVO;

@Component
public class UserReviewDAO {

///////////////////타사용자리뷰조회////////////////////	
	public String selOtherImg(OtherReviewVO orVO) {
		String otherImg = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		otherImg = ss.selectOne("potato.userReview.selOtherImg", orVO);
		mbh.closeHandler(ss);
		return otherImg;
	}//selOtherImg
	
	public String selOtherNick(OtherReviewVO orVO) {
		String otherNick = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		otherNick = ss.selectOne("potato.userReview.selOtherNick", orVO);
		mbh.closeHandler(ss);
		return otherNick;
	}//selOtherNick
	
	/**
	 * 리뷰수
	 * @param orVO
	 * @return
	 */
	public int selOtherRev(OtherReviewVO orVO) {
		int otherRev = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		otherRev = ss.selectOne("potato.userReview.selOtherRev", orVO);
		mbh.closeHandler(ss);
		return otherRev;
	}//selTotalRev
	
	/**
	 * 리뷰조회
	 * @param orVO
	 * @return
	 */
	public List<OtherReviewDomain> selOtherRevAll(OtherReviewVO orVO){
		List<OtherReviewDomain> list= null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler(); 
		list = ss.selectList("potato.userReview.selOtherRevAll", orVO);
		mbh.closeHandler(ss);
		return list;
	}//selOtherRevAll   
	
///////////////////사용자리뷰조회////////////////////
	public String selMyImg(MyReviewVO mrVO) {
		String myImg = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		myImg = ss.selectOne("potato.userReview.selMyImg", mrVO);
		mbh.closeHandler(ss);
		return myImg;
	}//selMyImg
	
	public String selMyNick(MyReviewVO mrVO) {
		String myNick = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		myNick = ss.selectOne("potato.userReview.selMyNick", mrVO);
		mbh.closeHandler(ss);
		return myNick;
	}//selMyNick
	
	//My리뷰조회
	/**
	 * My
	 * @param mrVO
	 * @return
	 */
	public List<MyReviewDomain> selMyRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> mlist=null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler(); 
		
		System.out.println("-----mrVO DAO -"+ mrVO);
		mlist = ss.selectList("potato.userReview.selMyRevAll", mrVO);
		mbh.closeHandler(ss);
		return mlist;		
	}
///////////////////좋아요한리뷰조회////////////////////	
	//Like리뷰조회
	/**
	 * Like
	 * @param mrVO
	 * @return
	 */
	public List<MyReviewDomain> selLikeRevAll(MyReviewVO mrVO){
		List<MyReviewDomain> llist=null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler(); 
		llist = ss.selectList("potato.userReview.selLikeRevAll", mrVO);
		mbh.closeHandler(ss);
		return llist;		
	}
///////////////////페이징////////////////////		
	/**
	 * 총 게시물 수를 구하기
	 * @param srVO
	 * @return
	 */
	public int selTotalReview(MyReviewVO mrVO) {
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		cnt = ss.selectOne("potato.userReview.selTotalReview", mrVO);
		return cnt;
	}

}//class
