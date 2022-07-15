package kr.ac.kopo.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.LoginService;
import kr.ac.kopo.vo.MemberVO;

public class LoginProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		LoginService loginService = new LoginService();
		MemberVO member = loginService.login(id, password);
		
		if (member != null) {
			// 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			return "redirect:";
		}
		
		// 로그인 실패

		return "redirect:/login.do";
	}

}
