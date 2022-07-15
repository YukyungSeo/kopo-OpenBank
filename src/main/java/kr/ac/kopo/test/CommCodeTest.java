package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import kr.ac.kopo.dao.CommCodeDAO;

public class CommCodeTest {

	@org.junit.Test
	public void CommCodeDAOTest() throws Exception {
		CommCodeDAO dao = new CommCodeDAO();
		assertNotNull(dao.getSession());
	}

	@org.junit.Test
	public void CommCodeDAOselectByCodeIdTest() throws Exception {
		CommCodeDAO dao = new CommCodeDAO();
		assertNotNull(dao.selectByCodeId("100"));
	}
}
