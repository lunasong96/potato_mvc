package potato.domain;

import java.util.Arrays;

public class WriteReviewDomain {

	private String name, id, contents;
	private String[] img;
	private int restarea_idx, review_idx, rating;
	
	public WriteReviewDomain() {
		super();
	}

	public WriteReviewDomain(String name, String id, String contents, String[] img, int restarea_idx, int review_idx,
			int rating) {
		super();
		this.name = name;
		this.id = id;
		this.contents = contents;
		this.img = img;
		this.restarea_idx = restarea_idx;
		this.review_idx = review_idx;
		this.rating = rating;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Override
	public String toString() {
		return "WriteReviewDomain [name=" + name + ", id=" + id + ", contents=" + contents + ", img="
				+ Arrays.toString(img) + ", restarea_idx=" + restarea_idx + ", review_idx=" + review_idx + ", rating="
				+ rating + "]";
	}
	
}
