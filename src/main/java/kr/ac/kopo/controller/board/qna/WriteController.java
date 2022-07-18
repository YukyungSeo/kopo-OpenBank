package kr.ac.kopo.controller.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;

public class WriteController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");

		String superBoardSeq = request.getParameter("boardSeq");
		String superBoardTitle = request.getParameter("title");
		
		request.setAttribute("superBoardSeq", superBoardSeq);
		request.setAttribute("superBoardTitle", superBoardTitle);
		request.setAttribute("boardType", 2);
		request.setAttribute("boardTypeName", "QnA");
		
		return "/jsp/board/qna/write.jsp";
	}

}
