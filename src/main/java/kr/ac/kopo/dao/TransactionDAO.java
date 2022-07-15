package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.TransactionVO;

public class TransactionDAO {
	private SqlSession session;

	public TransactionDAO() {
		session = new MyConfig().getInstance();
		System.out.println(session);
	}

	public SqlSession getSession() {
		return session;
	}

	public void myBankTransaction(TransactionVO transactionVO) {
		session.update("dao.TransactionDAO.myBankTransaction", transactionVO);
		session.commit();
	}
}
