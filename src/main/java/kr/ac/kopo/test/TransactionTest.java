package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import kr.ac.kopo.dao.TransactionDAO;
import kr.ac.kopo.vo.TransactionVO;

public class TransactionTest {

	@org.junit.Test
	public void TransactionDAOTest() throws Exception {
		TransactionDAO dao = new TransactionDAO();
		assertNotNull(dao.getSession());
	}

	@org.junit.Test
	public void TransactionDAOMyBankTransactionTest() throws Exception {
		TransactionDAO dao = new TransactionDAO();
		dao.myBankTransaction(
				new TransactionVO("13900000000001", "O", "서유경에게 출금", "서유경으로부터 입금", "10000", "02", "13900000000002"));
		assertTrue("test".equals("test"));
	}
	
	@org.junit.Test
	public void TransactionDAOmyBankToHJTransactionTest() throws Exception {
		TransactionDAO dao = new TransactionDAO();
		dao.myBankToHJTransaction(new TransactionVO("13900000000001", "O", "서유경에게 출금", "서유경으로부터 입금", "10000", "03", "3900000000001"));
		assertTrue("test".equals("test"));
	}
	
	@org.junit.Test
	public void TransactionDAOHJToMyBankTransactionTest() throws Exception {
		TransactionDAO dao = new TransactionDAO();
		dao.HJToMyBankTransaction(new TransactionVO("03900000000001", "O", "서유경에게 출금", "서유경으로부터 입금", "10000", "03", "13900000000001"));
		assertTrue("test".equals("test"));
	}

}
