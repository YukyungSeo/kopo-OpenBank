package kr.ac.kopo.vo;

/**
 * @author DA
 *
 */
public class MemberVO {

	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String basicAddr;
	private String detailAddr;
	private String post;
	private char type;
	private String regDate;

	public MemberVO() {
		super();
	}

	public MemberVO(String id, String password, String name, String email, String phone, String basicAddr,
			String detailAddr, String post, char type, String regDate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.basicAddr = basicAddr;
		this.detailAddr = detailAddr;
		this.post = post;
		this.type = type;
		this.regDate = regDate;
	}

	public MemberVO(String id, String password, String name, String email, String phone, String basicAddr,
			String detailAddr, String post) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.basicAddr = basicAddr;
		this.detailAddr = detailAddr;
		this.post = post;
	}

	public MemberVO(String id, String name, String email) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBasicAddr() {
		return basicAddr;
	}

	public void setBasicAddr(String basicAddr) {
		this.basicAddr = basicAddr;
	}

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public char getType() {
		return type;
	}

	public void setType(char type) {
		this.type = type;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", phone="
				+ phone + ", basicAddr=" + basicAddr + ", detailAddr=" + detailAddr + ", post=" + post + ", type="
				+ type + ", regDate=" + regDate + "]";
	}

}
