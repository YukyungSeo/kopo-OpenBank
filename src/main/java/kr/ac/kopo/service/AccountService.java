package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.MemberVO;

public class AccountService {

	/**
	 * 모든 계좌 정보 가져오기
	 */
	public List<AccountVO> getAllMyAccounts(MemberVO memberVO) {
		AccountDAO accountDAO = new AccountDAO();
		return accountDAO.selectAllMyAccount(memberVO.getId());
	}

	/**
	 * 오픈뱅킹 계좌 정보 가져오기
	 * 
	 * @return
	 */
	public Map<String, Object> getAllOtherAccounts(MemberVO memberVO) {
		AccountDAO accountDAO = new AccountDAO();
		Map<String, Object> map = accountDAO.selectAllOtherAccount(memberVO.getId());
		return map;
	}

	public AccountVO getAccount(String bankcode, String accountNO) {
		System.out.println("getAccount" + bankcode);
		AccountDAO accountDAO = new AccountDAO();
		AccountVO account = accountDAO.procedureSelectOne(bankcode, accountNO);
		return account;
	}

	/**
	 * ConnectedACCT에 계좌 링크하기
	 * 
	 * @param memberVO
	 * @param bankcode
	 */
	public void addAccountByBankCode(MemberVO memberVO, String bankcode, String accountNo) {
		AccountDAO accountDAO = new AccountDAO();
		String[] accNo = accountNo.split(",");

		if (!accNo[0].equals("")) {
			accountDAO.insertConnectedACCT(memberVO.getId(), bankcode, accNo);
		} else {
			accountDAO.precedureConnectedACCT(memberVO.getId(), bankcode);
		}
	}

	public void createNewAccount(AccountVO accountVO) {
		AccountDAO accountDAO = new AccountDAO();
		accountDAO.insertAccount(accountVO);
	}

}
