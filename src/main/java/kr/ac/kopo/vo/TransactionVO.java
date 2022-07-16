package kr.ac.kopo.vo;

public class TransactionVO {

	private String transactionSeq;
	private String activeBankcode;
	private String activeBankName;
	private String activeAcctNo;
	private String type;
	private String name;
	private String dealName;
	private String amount;
	private String balance;
	private String dealBankcode;
	private String dealBankName;
	private String dealAcctNo;
	private String regDate;

	public TransactionVO() {
		super();
	}

	public TransactionVO(String transactionSeq, String activeBankcode, String activeBankName, String activeAcctNo,
			String type, String name, String dealName, String amount, String balance, String dealBankcode,
			String dealBankName, String dealAcctNo, String regDate) {
		super();
		this.transactionSeq = transactionSeq;
		this.activeBankcode = activeBankcode;
		this.activeBankName = activeBankName;
		this.activeAcctNo = activeAcctNo;
		this.type = type;
		this.name = name;
		this.dealName = dealName;
		this.amount = amount;
		this.balance = balance;
		this.dealBankcode = dealBankcode;
		this.dealBankName = dealBankName;
		this.dealAcctNo = dealAcctNo;
		this.regDate = regDate;
	}

	public TransactionVO(String activeBankcode, String activeAcctNo, String name, String dealName, String amount,
			String dealBankcode, String dealAcctNo) {
		super();
		this.activeBankcode = activeBankcode;
		this.activeAcctNo = activeAcctNo;
		this.name = name;
		this.dealName = dealName;
		this.amount = amount;
		this.dealBankcode = dealBankcode;
		this.dealAcctNo = dealAcctNo;
	}

	public String getTransactionSeq() {
		return transactionSeq;
	}

	public void setTransactionSeq(String transactionSeq) {
		this.transactionSeq = transactionSeq;
	}

	public String getActiveBankcode() {
		return activeBankcode;
	}

	public void setActiveBankcode(String activeBankcode) {
		this.activeBankcode = activeBankcode;
	}

	public String getActiveBankName() {
		return activeBankName;
	}

	public void setActiveBankName(String activeBankName) {
		this.activeBankName = activeBankName;
	}

	public String getActiveAcctNo() {
		return activeAcctNo;
	}

	public void setActiveAcctNo(String activeAcctNo) {
		this.activeAcctNo = activeAcctNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDealName() {
		return dealName;
	}

	public void setDealName(String dealName) {
		this.dealName = dealName;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	public String getDealBankcode() {
		return dealBankcode;
	}

	public void setDealBankcode(String dealBankcode) {
		this.dealBankcode = dealBankcode;
	}

	public String getDealBankName() {
		return dealBankName;
	}

	public void setDealBankName(String dealBankName) {
		this.dealBankName = dealBankName;
	}

	public String getDealAcctNo() {
		return dealAcctNo;
	}

	public void setDealAcctNo(String dealAcctNo) {
		this.dealAcctNo = dealAcctNo;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "TransactionVO [transactionSeq=" + transactionSeq + ", activeBankcode=" + activeBankcode
				+ ", activeBankName=" + activeBankName + ", activeAcctNo=" + activeAcctNo + ", type=" + type + ", name="
				+ name + ", dealName=" + dealName + ", amount=" + amount + ", balance=" + balance + ", dealBankcode="
				+ dealBankcode + ", dealBankName=" + dealBankName + ", dealAcctNo=" + dealAcctNo + ", regDate="
				+ regDate + "]";
	}

}
