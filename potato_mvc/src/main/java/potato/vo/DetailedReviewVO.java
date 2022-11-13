package potato.vo;

public class DetailedReviewVO {

	private String img, id;
	private int dateFlag, addFlag, review_idx, restarea_idx;
	
	public DetailedReviewVO() {
		super();
	}

	public DetailedReviewVO(String img, String id, int dateFlag, int addFlag, int review_idx, int restarea_idx) {
		super();
		this.img = img;
		this.id = id;
		this.dateFlag = dateFlag;
		this.addFlag = addFlag;
		this.review_idx = review_idx;
		this.restarea_idx = restarea_idx;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getDateFlag() {
		return dateFlag;
	}

	public void setDateFlag(int dateFlag) {
		this.dateFlag = dateFlag;
	}

	public int getAddFlag() {
		return addFlag;
	}

	public void setAddFlag(int addFlag) {
		this.addFlag = addFlag;
	}

	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}

	public int getRestarea_idx() {
		return restarea_idx;
	}

	public void setRestarea_idx(int restarea_idx) {
		this.restarea_idx = restarea_idx;
	}

	@Override
	public String toString() {
		return "DetailedReviewVO [img=" + img + ", id=" + id + ", dateFlag=" + dateFlag + ", addFlag=" + addFlag
				+ ", review_idx=" + review_idx + ", restarea_idx=" + restarea_idx + "]";
	}
	
}//class
