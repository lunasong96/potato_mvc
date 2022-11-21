package potato.domain;

import java.sql.Date;
import java.util.Arrays;

public class MyReviewDomain {
	private String nick, contents, id, profilImg, name;
	private String[] revimg;
	private int restarea_idx, review_idx, rating, like_cnt;
	private Date postDate;
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
	public String getProfilImg() {
		return profilImg;
	}
	public void setProfilImg(String profilImg) {
		this.profilImg = profilImg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String[] getRevimg() {
		return revimg;
	}
	public void setRevimg(String[] revimg) {
		this.revimg = revimg;
	}
	public int getRestarea_idx() {
		return restarea_idx;
	}
	public void setRestarea_idx(int restarea_idx) {
		this.restarea_idx = restarea_idx;
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
	public int getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(int like_cnt) {
		this.like_cnt = like_cnt;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	
	@Override
	public String toString() {
		return "OtherReviewDomain [nick=" + nick + ", contents=" + contents + ", id=" + id + ", profilImg=" + profilImg
				+ ", name=" + name + ", revimg=" + Arrays.toString(revimg) + ", restarea_idx=" + restarea_idx
				+ ", review_idx=" + review_idx + ", rating=" + rating + ", like_cnt=" + like_cnt + ", postDate="
				+ postDate + "]";
	}
	
}
