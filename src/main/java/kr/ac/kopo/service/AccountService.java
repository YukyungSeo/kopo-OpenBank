package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.dao.CommCodeDAO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.CommCodeVO;
import kr.ac.kopo.vo.MemberVO;

public class AccountService {

	/**
	 * 모든 계좌 정보 가져오기
	 */
	public List<AccountVO> getAllMyAccounts(){
		AccountDAO accountDAO = new AccountDAO();
		return accountDAO.selectAllMyAccount();
	}

	/**
	 * 오픈뱅킹 계좌 정보 가져오기
	 * @return
	 */
	public List<AccountVO> getAllOtherAccounts(String id) {
		AccountDAO accountDAO = new AccountDAO();
		List<AccountVO> accountList = accountDAO.selectAllOtherAccount(id);
		return accountList;
	}

	public AccountVO getAccountByAccountNo(String accountNO) {
		AccountDAO accountDAO = new AccountDAO();
		AccountVO account = accountDAO.selectByAccontNo(accountNO);
		return account;
	}

	public void addAccountByBankCode(MemberVO memberVO, String bankcode) {
		AccountDAO accountDAO = new AccountDAO();
		accountDAO.precedureConnectedACCT(memberVO.getId(), bankcode);
	}
	
}
