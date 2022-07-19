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

		String bankcode	= request.getParameter("bankcode");
		String accountNo = request.getParameter("accountNo");

		AccountService service = new AccountService();
		AccountVO account = service.getAccount(bankcode, accountNo);
		
		request.setAttribute("account", account);

		return "/jsp/account/transaction.jsp";
	}

}
