package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Ignore;

import kr.ac.kopo.dao.TransactionDAO;
import kr.ac.kopo.vo.TransactionVO;

public class TransactionTest {

	@org.junit.Test
	public void TransactionDAOTest() throws Exception {
		TransactionDAO dao = new TransactionDAO();
		assertNotNull(dao.getSession());
	}

	@Ignore
	@org.junit.Test
	public void TransactionDAOtransactionTest() throws Exception {
		TransactionDAO dao = new TransactionDAO();
		dao.procedureTransaction(new TransactionVO("02", "13900000000001", "서유경에게 출금", "서유경으로부터 입금" , "10000", "02", "13900000000002"), "1111");
	}
	
	@org.junit.Test
	public void TransactionDAOProcedureSelectAllTest() throws Exception {
		TransactionDAO dao = new TransactionDAO();
		assertNotNull(dao.procedureSelectAll("2", "13900000000001"));
	}
	
}
