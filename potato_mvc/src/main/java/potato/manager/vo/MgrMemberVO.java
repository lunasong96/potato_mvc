package potato.manager.vo;

public class MgrMemberVO {
	private String id;
	private int memberType,pageFlag=1;
	
	public MgrMemberVO() {

	}

	public MgrMemberVO(String id, int memberType, int pageFlag) {
		this.id = id;
		this.memberType = memberType;
		this.pageFlag = pageFlag;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMemberType() {
		return memberType;
	}

	public void setMemberType(int memberType) {
		this.memberType = memberType;
	}

	public int getPageFlag() {
		return pageFlag;
	}

	public void setPageFlag(int pageFlag) {
		this.pageFlag = pageFlag;
	}

	@Override
	public String toString() {
		return "MgrMemberVO [id=" + id + ", memberType=" + memberType + ", pageFlag=" + pageFlag + "]";
	}
	
	
}
