package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.dao.CommCodeDAO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.CommCodeVO;

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
//		accountList.addAll(accountDAO.selectAllSYAccount());
		return accountList;
	}
	
	public List<CommCodeVO> getCommCodeByCodeId(String codeId){
		CommCodeDAO commCodeDAO = new CommCodeDAO();
		return commCodeDAO.selectByCodeId(codeId); 
	}

	public AccountVO getAccountByAccountNo(String accountNO) {
		AccountDAO accountDAO = new AccountDAO();
		AccountVO account = accountDAO.selectByAccontNo(accountNO);
		return account;
	}
	
}
