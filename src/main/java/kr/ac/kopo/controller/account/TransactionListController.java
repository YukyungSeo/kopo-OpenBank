package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.TransactionService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.TransactionVO;

public class TransactionListController implements Controller {

	@SuppressWarnings("unchecked")
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String accountNo = request.getParameter("accountNo");
		String bankcode = request.getParameter("bankcode");
		HttpSession session = request.getSession();

		// accout를 pageContext로 올림

		if (bankcode.equals("2")) {
			List<AccountVO> accountList = (List<AccountVO>) session.getAttribute("myAccountList");
			for (AccountVO accountVO : accountList) {
				if (accountVO.getAccountNo().equals(accountNo)) {
					request.setAttribute("account", accountVO);
					break;
				}
				session.removeAttribute("myAccountList");
			}
		} else {
			
			List<AccountVO> accountList = (List<AccountVO>) session.getAttribute("otherAccountList");
			for (AccountVO accountVO : accountList) {
				if (accountVO.getAccountNo().equals(accountNo)) {
					request.setAttribute("account", accountVO);
					break;
				}
				session.removeAttribute("otherAccountList");
			}
		}

		// accountNo로 transactionList를 가져와서 pageContext로 올림
		TransactionService service = new TransactionService();
		List<TransactionVO> transactionList = service.getAllTransaction(bankcode, accountNo);
		
		session.setAttribute("transactionList", transactionList);

		return "/jsp/account/transactionList.jsp";
	}

}
