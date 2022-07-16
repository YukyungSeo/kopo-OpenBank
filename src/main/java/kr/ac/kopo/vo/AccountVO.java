package kr.ac.kopo.vo;

public class AccountVO {

	private String accountNo;
	private String bankcode;
	private String bankName;
	private String memberId;
	private String password;
	private String amount;
	private String goodsClCode;
	private String goodsCl;
	private String goodsCode;
	private String goods;
	private String available;
	private String regDate;

	public AccountVO() {
		super();
	}

	public AccountVO(String accountNo, String bankcode, String bankName, String memberId, String password,
			String amount, String goodsClCode, String goodsCl, String goodsCode, String goods, String available,
			String regDate) {
		super();
		this.accountNo = accountNo;
		this.bankcode = bankcode;
		this.bankName = bankName;
		this.memberId = memberId;
		this.password = password;
		this.amount = amount;
		this.goodsClCode = goodsClCode;
		this.goodsCl = goodsCl;
		this.goodsCode = goodsCode;
		this.goods = goods;
		this.available = available;
		this.regDate = regDate;
	}

	public AccountVO(String memberId, String password, String goodsClCode, String goodsCode) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.goodsClCode = goodsClCode;
		this.goodsCode = goodsCode;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getGoodsClCode() {
		return goodsClCode;
	}

	public void setGoodsClCode(String goodsClCode) {
		this.goodsClCode = goodsClCode;
	}

	public String getGoodsCl() {
		return goodsCl;
	}

	public void setGoodsCl(String goodsCl) {
		this.goodsCl = goodsCl;
	}

	public String getGoodsCode() {
		return goodsCode;
	}

	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
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
				+ memberId + ", password=" + password + ", amount=" + amount + ", goodsClCode=" + goodsClCode
				+ ", goodsCl=" + goodsCl + ", goodsCode=" + goodsCode + ", goods=" + goods + ", available=" + available
				+ ", regDate=" + regDate + "]";
	}

}
