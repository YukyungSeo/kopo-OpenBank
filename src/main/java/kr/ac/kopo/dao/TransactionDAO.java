package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

	public void procedureTransaction(TransactionVO transactionVO, String password) {
		System.out.println(transactionVO.toString());
		System.out.println(password);

		Map<String, Object> map = new HashMap<>();
		map.put("password", password);
		map.put("transactionVO", transactionVO);
		session.selectOne("dao.TransactionDAO.procedureTransaction", map);
//		session.selectList("dao.TransactionDAO.transactionStart", transactionVO);
	}

	@SuppressWarnings("unchecked")
	public List<TransactionVO> procedureSelectAll(String bankcode, String accoutNo) {
		List<TransactionVO> transactionList = new ArrayList<>();
//		transactionList.add(new TransactionVO());

		Map<String, Object> map = new HashMap<>();
		map.put("bankcode", bankcode);
		map.put("accoutNo", accoutNo);
		map.put("transactionList", transactionList);

		System.out.println("bankcode : " + bankcode + ", accountNo : " + accoutNo + ", " + transactionList);
		session.selectOne("dao.TransactionDAO.procedureSelectAll", map);
		transactionList = (List<TransactionVO>) map.get("transactionList");
		
		System.out.println("transactionList.size : " + transactionList.size());
		for (TransactionVO transactionVO : transactionList) {
			System.out.println(transactionVO);
		}
		
		return transactionList;
	}
}
