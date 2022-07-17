package kr.ac.kopo.controller.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;

public class DeleteProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		String boardSeq = request.getParameter("boardSeq");
		
		BoardService service = new BoardService();
		service.deleteQnABoard(boardSeq);
		
		return "redirect:/board/qna/list.do?page=1";
	}

}
