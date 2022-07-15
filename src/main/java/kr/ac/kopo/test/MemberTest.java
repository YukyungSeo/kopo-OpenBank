package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Ignore;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.vo.MemberVO;

public class MemberTest {

	@org.junit.Test
	public void MemberDAOTest() throws Exception {
		MemberDAO dao = new MemberDAO();
		assertNotNull(dao.getSession());
	}

	@org.junit.Test
	public void MemberDAOSelectAllTest() throws Exception {
		MemberDAO dao = new MemberDAO();
		assertNotNull(dao.selectAll());
	}

	@org.junit.Test
	public void MemberDAOSelectById() throws Exception {
		MemberDAO dao = new MemberDAO();
		assertNotNull(dao.selectById("admin"));
	}
	
	@Ignore
	@org.junit.Test
	public void MemberDAOInsert() throws Exception {
		MemberDAO dao = new MemberDAO();
		assertNotNull(dao.insert(new MemberVO("0", "0", "0", "0", "0", "0", "0", "0")));
	}
}
