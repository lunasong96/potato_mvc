package potato.vo;

public class MyPagePwEditVO {
	
	private  String id,pass,newpass;
	
	public MyPagePwEditVO() {
	}

	public MyPagePwEditVO(String id, String pass, String newpass) {
		super();
		this.id = id;
		this.pass = pass;
		this.newpass = newpass;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getNewpass() {
		return newpass;
	}

	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}

	@Override
	public String toString() {
		return "MyPagePwEditVO [id=" + id + ", pass=" + pass + ", newpass=" + newpass + "]";
	}
	
}//class
