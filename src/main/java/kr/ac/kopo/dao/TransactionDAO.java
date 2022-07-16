package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.Map;

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

	public void transaction(TransactionVO transactionVO, String password) {
		System.out.println(transactionVO.toString());
		System.out.println(password);
		
		Map<String, Object> map = new HashMap<>();
		map.put("password", password);
		map.put("transactionVO", transactionVO);
		session.selectOne("dao.TransactionDAO.transaction", map);
//		session.selectList("dao.TransactionDAO.transactionStart", transactionVO);
	}
}
