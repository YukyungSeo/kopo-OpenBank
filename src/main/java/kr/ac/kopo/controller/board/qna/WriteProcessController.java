package kr.ac.kopo.controller.board.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

public class WriteProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		String boardType = request.getParameter("boardType");
		String superBoardSeq = request.getParameter("superBoardSeq");
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardVO boardVO = new BoardVO(boardType, superBoardSeq, writer, title, content);
		
		BoardService service = new BoardService();
		service.writeQnABoard(boardVO);
		
		return "redirect:/board/qna/list.do?page=1";
	}

}
