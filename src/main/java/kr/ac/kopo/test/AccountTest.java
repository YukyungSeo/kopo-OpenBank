package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.service.AccountService;

public class AccountTest {

	@org.junit.Test
	public void AccountDAOTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.getSession());
	}

	@org.junit.Test
	public void AccountDAOSelectAllMyAccountTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.selectAllMyAccount());
	}

	@org.junit.Test
	public void AccountServiceGetAllOtherAccounts() throws Exception {
		AccountService service = new AccountService();
		assertNotNull(service.getAllOtherAccounts());
	}
}
