package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ConnectedACCTVO;
import kr.ac.kopo.vo.MemberVO;

public class ListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		AccountService service = new AccountService();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("member");
		System.out.println(member.toString());
		
		List<AccountVO> myAccountList = service.getAllMyAccounts(member);
		@SuppressWarnings("unchecked")
		List<AccountVO> otherAccountList = (List<AccountVO>)service.getAllOtherAccounts(member).get("accountList");
		@SuppressWarnings("unchecked")
		List<ConnectedACCTVO> connectedACCTList = (List<ConnectedACCTVO>)service.getAllOtherAccounts(member).get("connectedACCTList");
		
		session.setAttribute("myAccountList", myAccountList);
		session.setAttribute("otherAccountList", otherAccountList);
		session.setAttribute("connectedACCTList", connectedACCTList);
		
		return "/jsp/account/list.jsp";
	}

}
