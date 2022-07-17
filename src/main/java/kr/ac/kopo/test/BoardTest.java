package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import org.junit.Ignore;

import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.service.BoardService;

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
	
}
