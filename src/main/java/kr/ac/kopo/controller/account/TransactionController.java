package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.AccountVO;

public class TransactionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		String accountNo = request.getParameter("accountNo");
		AccountService service = new AccountService();
		System.out.println(accountNo);
		
		AccountVO account = service.getAccountByAccountNo(accountNo);
		request.setAttribute("accout", account);
		System.out.println(account);
		
		return "/jsp/account/transaction.jsp";
	}

}
