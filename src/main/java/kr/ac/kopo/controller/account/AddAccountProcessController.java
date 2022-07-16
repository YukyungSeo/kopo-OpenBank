package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.MemberVO;

public class AddAccountProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String bankcode = request.getParameter("bankcode");
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
//		System.out.println(memberVO);
		
		AccountService service = new AccountService();
		service.addAccountByBankCode(memberVO, bankcode);

		return "redirect:/account/list.do";
	}

}
