package kr.ac.kopo.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.LoginService;
import kr.ac.kopo.vo.MemberVO;

public class ApiLoginProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		LoginService service = new LoginService();
		MemberVO member = service.apiLogin(id);
		
		if (member != null) {
			// 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			return "redirect:";
		}
		
		// 로그인 실패 - 새로 가입
		String name = request.getParameter("name");
		String email = request.getParameter("email");
//		System.out.println(name + email);
		
		if(service.apiLogon(new MemberVO(id, name, email))) {
			return "redirect:";
		}
		
		return "redirect:/login.do";
		
	}

}
