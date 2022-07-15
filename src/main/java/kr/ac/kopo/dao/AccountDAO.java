package kr.ac.kopo.dao;

import java.util.List;

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

	public List<AccountVO> selectAllMyAccount() {
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectAllMyAccount");
		for (AccountVO accountVO : accountList) {
			System.out.println(accountVO);
		}
		return accountList;
	}

	public List<AccountVO> selectAllHJAccount() {
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectAllHJAccount");
		for (AccountVO accountVO : accountList) {
			System.out.println(accountVO);
		}
		return accountList;
	}

	public List<AccountVO> selectAllSYAccount() {
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectAllSYAccount");
		for (AccountVO accountVO : accountList) {
			System.out.println(accountVO);
		}
		return accountList;
	}

	public void myBankTransport(TransactionVO transactionVO) {
		session.update("dao.AccountDAO.myBankTransport", transactionVO);
		session.commit();
	}
}
