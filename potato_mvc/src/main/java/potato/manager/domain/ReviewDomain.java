package potato.manager.domain;

import java.sql.Date;

public class ReviewDomain {
	private String nick, contents, id, reviewImg, profilImg;
	private int review_idx,rating,reportCnt,likeCnt;
	private Date postDate;
	
	public ReviewDomain() {
		// TODO Auto-generated constructor stub
	}

	public ReviewDomain(String nick, String contents, String id, String reviewImg, String profilImg, int review_idx,
			int rating, int reportCnt, int likeCnt, Date postDate) {
		super();
		this.nick = nick;
		this.contents = contents;
		this.id = id;
		this.reviewImg = reviewImg;
		this.profilImg = profilImg;
		this.review_idx = review_idx;
		this.rating = rating;
		this.reportCnt = reportCnt;
		this.likeCnt = likeCnt;
		this.postDate = postDate;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getReviewImg() {
		return reviewImg;
	}

	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}

	public String getProfilImg() {
		return profilImg;
	}

	public void setProfilImg(String profilImg) {
		this.profilImg = profilImg;
	}

	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public int getReportCnt() {
		return reportCnt;
	}

	public void setReportCnt(int reportCnt) {
		this.reportCnt = reportCnt;
	}

	public int getLikeCnt() {
		return likeCnt;
	}

	public void setLikeCnt(int likeCnt) {
		this.likeCnt = likeCnt;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	@Override
	public String toString() {
		return "ReviewDomain [nick=" + nick + ", contents=" + contents + ", id=" + id + ", reviewImg=" + reviewImg
				+ ", profilImg=" + profilImg + ", review_idx=" + review_idx + ", rating=" + rating + ", reportCnt="
				+ reportCnt + ", likeCnt=" + likeCnt + ", postDate=" + postDate + "]";
	}

	
}
