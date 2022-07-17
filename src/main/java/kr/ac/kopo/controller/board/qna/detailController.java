package kr.ac.kopo.controller.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

public class DetailController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		String boardSeq = request.getParameter("boardSeq");
		
		BoardService service = new BoardService();
		BoardVO board = service.getQnABoard(boardSeq);
		
		request.setAttribute("board", board);
		
		return "/jsp/board/qna/detail.jsp";
	}
	
}

