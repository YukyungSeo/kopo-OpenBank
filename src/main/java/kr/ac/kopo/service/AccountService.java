package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.MemberVO;

public class AccountService {

	/**
	 * 모든 계좌 정보 가져오기
	 */
	public List<AccountVO> getAllMyAccounts(MemberVO memberVO){
		AccountDAO accountDAO = new AccountDAO();
		return accountDAO.selectAllMyAccount(memberVO.getId());
	}

	/**
	 * 오픈뱅킹 계좌 정보 가져오기
	 * @return
	 */
	public List<AccountVO> getAllOtherAccounts(MemberVO memberVO) {
		AccountDAO accountDAO = new AccountDAO();
		List<AccountVO> accountList = accountDAO.selectAllOtherAccount(memberVO.getId());
		return accountList;
	}

	public AccountVO getAccount(String bankcode, String accountNO) {
		AccountDAO accountDAO = new AccountDAO();
		AccountVO account = accountDAO.procedureSelectOne(bankcode, accountNO);
		return account;
	}

	/**
	 * ConnectedACCT에 계좌 링크하기
	 * @param memberVO
	 * @param bankcode
	 */
	public void addAccountByBankCode(MemberVO memberVO, String bankcode) {
		AccountDAO accountDAO = new AccountDAO();
		accountDAO.precedureConnectedACCT(memberVO.getId(), bankcode);
	}

	public void createNewAccount(AccountVO accountVO) {
		AccountDAO accountDAO = new AccountDAO();
		accountDAO.insertAccount(accountVO);
	}
	
}
