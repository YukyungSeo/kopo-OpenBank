package kr.ac.kopo.service;

import kr.ac.kopo.dao.TransactionDAO;
import kr.ac.kopo.vo.TransactionVO;

public class TransactionService {

	public boolean transaction(TransactionVO transactionVO, String password) {

		TransactionDAO transactionDAO = new TransactionDAO();
		transactionDAO.procedureTransaction(transactionVO, password);
		
		return true;
	}

	
}
