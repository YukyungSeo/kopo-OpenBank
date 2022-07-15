package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.MemberVO;

public class MemberDAO {

	private SqlSession session;

	public MemberDAO() {
		session = new MyConfig().getInstance();
		System.out.println(session);
	}
	
	public SqlSession getSession() {
		return session;
	}
	
	public List<MemberVO> selectAll() {
		List<MemberVO> memberList = session.selectList("dao.MemberDAO.selectAll");
		for (MemberVO memberVO : memberList) {
			System.out.println(memberVO);
		}
		return memberList;
	}
	
	public MemberVO selectById(String id) {
		MemberVO member = session.selectOne("dao.MemberDAO.selectById", id);
		return member;
	}

	public boolean insert(MemberVO memberVO) {
		
		session.insert("dao.MemberDAO.insert", memberVO);
		session.commit();
		
		// TODO : 삽입실패일 경우 에러 리턴
		return true;
	}
}


