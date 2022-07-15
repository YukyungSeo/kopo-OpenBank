package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.AccountVO;

public class AccountDAO {

	private SqlSession session;

	public AccountDAO() {
		session = new MyConfig().getInstance();
		System.out.println(session);
	}
	
	public SqlSession getSession() {
		return session;
	}
	
	public List<AccountVO> selectAll() {
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectAll");
		for (AccountVO accountVO : accountList) {
			System.out.println(accountVO);
		}
		return accountList;
	}
	
	public AccountVO selectByAccountNo(String accountNo) {
		AccountVO account = session.selectOne("dao.AccountDAO.selectById", accountNo);
		return account;
	}

	public boolean insert(AccountVO accountVO) {
		
		session.insert("dao.AccountDAO.insert", accountVO);
		session.commit();
		
		// TODO : 삽입실패일 경우 에러 리턴
		return true;
	}
}


