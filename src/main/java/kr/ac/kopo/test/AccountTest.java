package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Ignore;

import kr.ac.kopo.dao.AccountDAO;

public class AccountTest {

	@org.junit.Test
	public void AccountDAOTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.getSession());
	}

	@org.junit.Test
	public void AccountDAOSelectAllTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.selectAll());
	}

	@org.junit.Test
	public void AccountDAOSelectByAccountNo() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.selectByAccountNo("13900000000001"));
	}
	
	@Ignore
	@org.junit.Test
	public void AccountDAOInsert() throws Exception {
//		AccountDAO dao = new AccountDAO();
//		assertNotNull(dao.insert(new AccountVO("0", "0", "0", "0", "0", "0", "0", "0")));
	}
}
