package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.CommCodeVO;

public class CommCodeDAO {

	private SqlSession session;

	public CommCodeDAO() {
		session = new MyConfig().getInstance();
		System.out.println(session);
	}
	
	public SqlSession getSession() {
		return session;
	}
	
	public List<CommCodeVO> selectByCodeId(String codeId){
		List<CommCodeVO> commCodeList = session.selectList("dao.CommCodeDAO.selectByCodeId", codeId);
		for (CommCodeVO commCodeVO : commCodeList) {
			System.out.println(commCodeVO);
		}
		return commCodeList;
	}
}
