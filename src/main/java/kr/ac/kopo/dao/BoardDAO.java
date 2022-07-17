package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;
import kr.ac.kopo.vo.BoardVO;

public class BoardDAO {

	private SqlSession session;

	public BoardDAO() {
		session = new MyConfig().getInstance();
		System.out.println(session);
	}

	public SqlSession getSession() {
		return session;
	}

	public List<BoardVO> selectQnAHeadBoard(String boardType) {
		List<BoardVO> boardList = session.selectList("dao.BoardDAO.selectQnAHeadBoard", boardType);
//		for (BoardVO boardVO : boardList) {
//			System.out.println(boardVO);
//		}
		return boardList;
	}

	public List<BoardVO> selectQnACommendBoard(String boardType, Set<String> list) {
		Map<String, Object> map = new HashMap<>();
		map.put("boardType", boardType);
		map.put("superBoardSeq", list);
		
		List<BoardVO> boardList = session.selectList("dao.BoardDAO.selectQnACommendBoard", map);
//		for (BoardVO boardVO : boardList) {
//			System.out.println(boardVO);
//		}
		return boardList;
	}

}
