package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.TransactionService;
import kr.ac.kopo.vo.TransactionVO;

public class TransactionProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String activeBankcode = request.getParameter("activeBankcode");
		String activeAcctNo = request.getParameter("activeAcctNo");
		String dealBankcode = request.getParameter("dealBankcode");
		String dealAcctNo = request.getParameter("dealAcctNo");
		String amount = request.getParameter("amount");
		String password = request.getParameter("password");
		String dealName = request.getParameter("dealName");
		String name = request.getParameter("name");

		TransactionVO transactionVO = new TransactionVO(activeBankcode, activeAcctNo, name, dealName, amount, dealBankcode, dealAcctNo);
//		System.out.println(transactionVO);
		
		TransactionService service = new TransactionService();
		service.transaction(transactionVO, password);
		
		return "redirect:/account/list.do";
	}
}
