package potato.domain;

import java.sql.Date;
import java.util.Arrays;

public class OtherReviewDomain {
	private String id,contents;
	private String[] img;
	private int Review_idx,rating;
	private Date postDate;
	
	public OtherReviewDomain() {
		super();
	}

	public OtherReviewDomain(String id, String contents, String[] img, int review_idx, int rating, Date postDate) {
		super();
		this.id = id;
		this.contents = contents;
		this.img = img;
		Review_idx = review_idx;
		this.rating = rating;
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
		return Review_idx;
	}

	public void setReview_idx(int review_idx) {
		Review_idx = review_idx;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	@Override
	public String toString() {
		return "OtherReviewDomain [id=" + id + ", contents=" + contents + ", img=" + Arrays.toString(img)
				+ ", Review_idx=" + Review_idx + ", rating=" + rating + ", postDate=" + postDate + "]";
	}
	
}
