package potato.domain;

import java.sql.Date;
import java.util.Arrays;

public class DetailedReviewDomain {

	private String id, contents;
	private String[] img;
	private int review_idx, rating, likeTotal;
	private Date postDate;
	
	public DetailedReviewDomain() {
		super();
	}

	public DetailedReviewDomain(String id, String contents, String[] img, int review_idx, int rating, int likeTotal,
			Date postDate) {
		super();
		this.id = id;
		this.contents = contents;
		this.img = img;
		this.review_idx = review_idx;
		this.rating = rating;
		this.likeTotal = likeTotal;
		this.postDate = postDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String[] getImg() {
		return img;
	}

	public void setImg(String[] img) {
		this.img = img;
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

	public int getLikeTotal() {
		return likeTotal;
	}

	public void setLikeTotal(int likeTotal) {
		this.likeTotal = likeTotal;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	@Override
	public String toString() {
		return "DetailedReviewDomain [id=" + id + ", contents=" + contents + ", img=" + Arrays.toString(img)
				+ ", review_idx=" + review_idx + ", rating=" + rating + ", likeTotal=" + likeTotal + ", postDate="
				+ postDate + "]";
	}
	
}
