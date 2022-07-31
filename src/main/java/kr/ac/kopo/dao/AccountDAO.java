package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ConnectedACCTVO;

public class AccountDAO {

	private SqlSession session;

	public AccountDAO() {
		session = new MyConfig().getInstance();
		System.out.println(session);
	}

	public SqlSession getSession() {
		return session;
	}

	@SuppressWarnings("unchecked")
	public AccountVO procedureSelectOne(String bankcode, String accountNo) {
		List<AccountVO> accountList = new ArrayList<AccountVO>();

		Map<String, Object> map = new HashMap<>();
		map.put("bankcode", bankcode);
		map.put("accountNo", accountNo);
		map.put("accountList", accountList);
		
		System.out.println("accountDAO - bankcode : " + map.get("bankcode") + ", accountNo : " + map.get("accountNo"));
		session.selectOne("dao.AccountDAO.procedureSelectOne", map);
		accountList = (List<AccountVO>) map.get("accountList");
		
		return accountList.get(0);
	}

	public List<AccountVO> selectAllMyAccount(String id) {
		List<AccountVO> accountList = session.selectList("dao.AccountDAO.selectAllMyAccount", id);
		for (AccountVO accountVO : accountList) {
			System.out.println(accountVO);
		}
		return accountList;
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectAllOtherAccount(String id) {
		List<AccountVO> accountList = new ArrayList<>();
		List<ConnectedACCTVO> connectedACCTList = new ArrayList<>();

		Map<String, Object> map = new HashMap<>();
		map.put("memberId", id);
		map.put("accountList", accountList);
		map.put("connectedACCTList", connectedACCTList);

		System.out.println("아이디 : " + id);
		session.selectOne("dao.AccountDAO.selectAllOtherAccount", map);
		
		accountList = (List<AccountVO>) map.get("accountList");
		connectedACCTList = (List<ConnectedACCTVO>) map.get("connectedACCTList");
		
		for (ConnectedACCTVO connectedACCT : connectedACCTList) {
			System.out.println(connectedACCT);
		}
		
		return map;
	}

	public void precedureConnectedACCT(String id, String bankcode) {

		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("bankcode", bankcode);

		session.selectOne("dao.AccountDAO.procedureConnectedACCT", map);
	}

	public void insertAccount(AccountVO accountVO) {
		session.insert("dao.AccountDAO.insertAccount", accountVO);
		session.commit();
	}

	public void insertConnectedACCT(String id, String bankcode, String[] accountNoArr) {
		
		for (String accountNo : accountNoArr) {
			
			Map<String, Object> map = new HashMap<>();
			map.put("id", id);
			map.put("bankcode", bankcode);
			map.put("accountNo", accountNo);
			
			session.insert("dao.AccountDAO.insertConnectedACCT", map);
		}
		
		session.commit();
	}
}
