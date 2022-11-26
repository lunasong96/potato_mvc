package potato.vo;

public class DoSearchVO {
	private int pageFlag=1,do_idx;

	public DoSearchVO() {
	}

	public DoSearchVO(int pageFlag, int do_idx) {
		this.pageFlag = pageFlag;
		this.do_idx = do_idx;
	}

	public int getPageFlag() {
		return pageFlag;
	}

	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}

	public int getDo_idx() {
		return do_idx;
	}

	public void setDo_idx(int do_idx) {
		this.do_idx = do_idx;
	}

	@Override
	public String toString() {
		return "doSearchVO [pageFlag=" + pageFlag + ", do_idx=" + do_idx + "]";
	}

}
