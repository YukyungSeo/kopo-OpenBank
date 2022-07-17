package kr.ac.kopo.controller.board.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

public class ListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		int page = Integer.parseInt(request.getParameter("page"));
		
		BoardService service = new BoardService();
		List<BoardVO> boardList = service.getQnABoardListPage(page);
		System.out.println(boardList.toString());
		
		request.setAttribute("boardList", boardList);
		
		return "/jsp/board/qna/list.jsp";
	}

}
