package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import org.junit.Ignore;

import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

public class BoardTest {
	@org.junit.Test
	public void BoardDAOTest() throws Exception {
		BoardDAO dao = new BoardDAO();
		assertNotNull(dao.getSession());
	}

	@Ignore
	@org.junit.Test
	public void BoardDAOselectQnAHeadBoardTest() throws Exception {
		BoardDAO dao = new BoardDAO();
		assertNotNull(dao.selectQnAHeadBoard("2"));
	}

	@Ignore
	@org.junit.Test
	public void BoardDAOselectQnACommendBoardTest() throws Exception {
		Set<String> list = new HashSet<>(Arrays.asList("6", "7", "3", "5", "4", "2", "1", "0", "0"));

		BoardDAO dao = new BoardDAO();
		assertNotNull(dao.selectQnACommendBoard("2", list));
	}

	@Ignore
	@org.junit.Test
	public void BoardServicegetBoardListTest() throws Exception {
		BoardService service = new BoardService();
		service.getQnABoardListPage(2);
	}

	@org.junit.Test
	public void BoardServiceGetBoardPageCntTest() throws Exception {
		BoardService service = new BoardService();
		System.out.println(service.getQnABoardPageCnt());
	}

	@org.junit.Test
	public void BoardServiceGetBoardTest() throws Exception {
		BoardService service = new BoardService();
		System.out.println(service.getQnABoard("5"));
		System.out.println(service.getQnABoard("13"));
	}
	

	@org.junit.Test
	public void BoardServiceWriteBoardTest() throws Exception {
		BoardService service = new BoardService();
		service.writeQnABoard(new BoardVO("2", null, "1", "test_NULL", "test_NULL"));
		service.writeQnABoard(new BoardVO("2", "1", "1", "test_1", "test_1"));
	}
	
	
	@org.junit.Test
	public void BoardDAODeleteProcedureTest() throws Exception {
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteProcedure("23");
		
	}
}
