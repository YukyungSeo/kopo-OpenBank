package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.service.TransactionService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.TransactionVO;

public class TransactionListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String accountNo = request.getParameter("accountNo");
		String bankcode = request.getParameter("bankcode");
		HttpSession session = request.getSession();
		
		int code = Integer.parseInt(bankcode);
		if(code < 4) {
			
			// accountNo로 Account정보 가져와서 pageContext로 올림
			AccountService AccountService = new AccountService();
			AccountVO account = AccountService.getAccount(bankcode, accountNo);
			session.setAttribute("account", account);
			System.out.println(account);
		
			// accountNo로 transactionList를 가져와서 pageContext로 올림
			TransactionService service = new TransactionService();
			List<TransactionVO> transactionList = service.getAllTransaction(bankcode, accountNo);
			
			request.setAttribute("transactionList", transactionList);
			
		} else {
			
			AccountVO account = new AccountVO();
			account.setBankcode(bankcode);
			account.setAccountNo(accountNo);
			session.setAttribute("account", account);
			
			TransactionVO transactionVO = new TransactionVO();
			transactionVO.setActiveAcctNo(accountNo);
			transactionVO.setActiveBankcode(bankcode);
			request.setAttribute("transactionVO", transactionVO);
			
		}
		return "/jsp/account/transactionList.jsp";
	}

}
