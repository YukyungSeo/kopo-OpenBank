package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.TransactionVO;

public class AccountDAO {

	private SqlSession session;

	public AccountDAO() {
		session = new MyConfig().getInstance();
		System.out.println(session);
	}

	public SqlSession getSession() {
		return session;
	}

	public AccountVO selectByAccontNo(String accountNO) {
		AccountVO account = session.selectOne("dao.AccountDAO.selectByAccontNo", accountNO);
		return account;
	}

	public List<AccountVO> selectAllMyAccount() {
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectAllMyAccount");
		for (AccountVO accountVO : accountList) {
			System.out.println(accountVO);
		}
		return accountList;
	}

	@SuppressWarnings("unchecked")
	public List<AccountVO> selectAllOtherAccount(String id) {
		List<AccountVO> accountList = new ArrayList<>();

		Map<String, Object> map = new HashMap<>();
		map.put("memberId", id);
		map.put("accountList", accountList);

		session.selectOne("dao.AccountDAO.selectAllOtherAccount", map);
		accountList = (List<AccountVO>) map.get("accountList");
		
		for (AccountVO account : accountList) {
			System.out.println(account);
		}
		return accountList;
	}

	public void myBankTransport(TransactionVO transactionVO) {
		session.update("dao.AccountDAO.myBankTransport", transactionVO);
		session.commit();
	}
}
