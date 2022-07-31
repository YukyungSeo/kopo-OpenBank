package kr.ac.kopo.vo;

public class ConnectedACCTVO {

	private String bankcode;

	public ConnectedACCTVO() {
		super();
	}

	public ConnectedACCTVO(String bankcode, String accountNo, String memberId) {
		super();
		this.bankcode = bankcode;
	}

	public String getBankcode() {
		return bankcode;
	}

	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}

	@Override
	public String toString() {
		return "ConnectedACCTVO [bankcode=" + bankcode + "]";
	}

}
