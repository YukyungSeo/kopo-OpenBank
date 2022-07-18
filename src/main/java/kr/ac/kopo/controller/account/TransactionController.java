package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.vo.AccountVO;

public class TransactionController implements Controller {

	@SuppressWarnings("unchecked")
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String accountNo = request.getParameter("accountNo");
		System.out.println(accountNo);

		HttpSession session = request.getSession();
		List<AccountVO> accountList = (List<AccountVO>) session.getAttribute("myAccountList");
		for (AccountVO accountVO : accountList) {
			if(accountVO.getAccountNo().equals(accountNo)) {
				request.setAttribute("account", accountVO);
				break;
			}
			session.removeAttribute("myAccountList");
		}
		
		if(request.getAttribute("account") == null) {
			accountList = (List<AccountVO>) session.getAttribute("otherAccountList");
			for (AccountVO accountVO : accountList) {
				if(accountVO.getAccountNo().equals(accountNo)) {
					request.setAttribute("account", accountVO);
					break;
				}
				session.removeAttribute("otherAccountList");
			}
		}

		return "/jsp/account/transaction.jsp";
	}

}
