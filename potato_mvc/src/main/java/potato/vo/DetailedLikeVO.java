package potato.vo;

public class DetailedLikeVO {
	
	private int id_clicker, review_idx, restarea_idx; 
	private String id_writer;
	
	public DetailedLikeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DetailedLikeVO(int id_clicker, int review_idx, int restarea_idx, String id_writer) {
		super();
		this.id_clicker = id_clicker;
		this.review_idx = review_idx;
		this.restarea_idx = restarea_idx;
		this.id_writer = id_writer;
	}

	public int getId_clicker() {
		return id_clicker;
	}

	public void setId_clicker(int id_clicker) {
		this.id_clicker = id_clicker;
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

	public String getId_writer() {
		return id_writer;
	}

	public void setId_writer(String id_writer) {
		this.id_writer = id_writer;
	}

	@Override
	public String toString() {
		return "DetailedLikeVO [id_clicker=" + id_clicker + ", review_idx=" + review_idx + ", restarea_idx="
				+ restarea_idx + ", id_writer=" + id_writer + "]";
	}
	
}
