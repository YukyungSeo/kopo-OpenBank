package kr.ac.kopo.controller.account;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.AccountService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.MemberVO;

public class CreateProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		String goodsClCode = request.getParameter("goodsClCode");
		String goodsCode = request.getParameter("goodsCode");
		String password	= request.getParameter("password");
		AccountVO accountVO = new AccountVO(memberVO.getId(), password, goodsClCode, goodsCode);
		System.out.println(accountVO);
		
		AccountService service = new AccountService();
		service.createNewAccount(accountVO);

		return "redirect:/account/list.do";
	}

}
