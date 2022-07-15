package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.vo.AccountVO;

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
	public List<AccountVO> getAllOtherAccounts() {
		AccountDAO accountDAO = new AccountDAO();
		List<AccountVO> accountList = accountDAO.selectAllHJAccount();
		accountList.addAll(accountDAO.selectAllSYAccount());
		return accountList;
	}
	
}
