package kr.ac.kopo.controller.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.LoginService;
import kr.ac.kopo.vo.MemberVO;

public class LogonProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String basisAddr = request.getParameter("basisAddr");
		String detailAddr = request.getParameter("detailAddr");
		String post = request.getParameter("post");

		MemberVO memberVO = new MemberVO(id, password, name, email, phone, basisAddr, detailAddr, post);
		
		System.out.println(memberVO);
		
		LoginService service = new LoginService();
		if(service.logon(memberVO, repassword)) {
			return "redirect:/login.do";
		}
		
		return "redirect:/logon.do";
	}

}
