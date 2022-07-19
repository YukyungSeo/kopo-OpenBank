package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Ignore;

import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.MemberVO;

public class AccountTest {

	@org.junit.Test
	public void AccountDAOTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.getSession());
	}

	@org.junit.Test
	public void AccountDAOSelectAllMyAccountTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.selectAllMyAccount("2340529477"));
	}

	@org.junit.Test
	public void AccountServiceGetAllOtherAccounts() throws Exception {
		AccountService service = new AccountService();
		assertNotNull(service.getAllOtherAccounts(new MemberVO("2340529477", null, null)));
	}

	@org.junit.Test
	public void AccountDAOprocedureSelectOneTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		assertNotNull(dao.procedureSelectOne("4", "010-2609-3796"));
	}
	
	@org.junit.Test
	public void AccountDAOprecedureConnectedACCTTest() throws Exception {
		AccountDAO dao = new AccountDAO();
		dao.precedureConnectedACCT("2340529477", "3");
	}
}
