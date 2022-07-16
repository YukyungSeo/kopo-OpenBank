package kr.ac.kopo.vo;

public class AccountVO {

	private String accountNo;
	private String bankcode;
	private String bankName;
	private String memberId;
	private String amount;
	private String goodsCl;
	private String goods;
	private String available;
	private String regDate;

	public AccountVO() {
		super();
	}

	public AccountVO(String accountNo, String bankcode, String bankName, String memberId, String amount, String goodsCl,
			String goods, String available, String regDate) {
		super();
		this.accountNo = accountNo;
		this.bankcode = bankcode;
		this.bankName = bankName;
		this.memberId = memberId;
		this.amount = amount;
		this.goodsCl = goodsCl;
		this.goods = goods;
		this.available = available;
		this.regDate = regDate;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getBankcode() {
		return bankcode;
	}

	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getGoodsCl() {
		return goodsCl;
	}

	public void setGoodsCl(String goodsCl) {
		this.goodsCl = goodsCl;
	}

	public String getGoods() {
		return goods;
	}

	public void setGoods(String goods) {
		this.goods = goods;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "AccountVO [accountNo=" + accountNo + ", bankcode=" + bankcode + ", bankName=" + bankName + ", memberId="
				+ memberId + ", amount=" + amount + ", goodsCl=" + goodsCl + ", goods=" + goods + ", available="
				+ available + ", regDate=" + regDate + "]";
	}

}
