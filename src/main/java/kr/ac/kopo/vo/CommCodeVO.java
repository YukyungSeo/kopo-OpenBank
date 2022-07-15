package kr.ac.kopo.vo;

public class CommCodeVO {

	private String codeId;
	private String code;
	private String name;
	private String available;

	public CommCodeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommCodeVO(String codeId, String code, String name, String available) {
		super();
		this.codeId = codeId;
		this.code = code;
		this.name = name;
		this.available = available;
	}

	public String getCodeId() {
		return codeId;
	}

	public void setCodeId(String codeId) {
		this.codeId = codeId;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	@Override
	public String toString() {
		return "CommCodeVO [codeId=" + codeId + ", code=" + code + ", name=" + name + ", available=" + available + "]";
	}

}
