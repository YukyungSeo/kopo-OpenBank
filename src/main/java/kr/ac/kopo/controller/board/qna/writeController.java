package kr.ac.kopo.controller.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;

public class writeController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		String superBoardSeq = request.getParameter("superBoardSeq");
		request.setAttribute("superBoardSeq", superBoardSeq);
		
		return "/jsp/board/qna/write.jsp";
	}

}
