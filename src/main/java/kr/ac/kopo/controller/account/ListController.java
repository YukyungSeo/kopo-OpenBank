package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.AccountVO;

public class ListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		AccountService service = new AccountService();
		List<AccountVO> myAcountList = service.getAllMyAccounts();
		List<AccountVO> otherAcountList = service.getAllOtherAccounts();
		
		request.setAttribute("myAcountList", myAcountList);
		request.setAttribute("otherAcountList", otherAcountList);
		
		return "/jsp/account/list.jsp";
	}

}
