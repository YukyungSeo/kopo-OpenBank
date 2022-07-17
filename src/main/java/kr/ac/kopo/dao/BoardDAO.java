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

	public int selectRowCount(int boardType) {
		return (int) session.selectOne("selectRowCount", boardType);
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

	public BoardVO selectOne(String boardType, String boardSeq) {
		Map<String, Object> map = new HashMap<>();
		map.put("boardType", boardType);
		map.put("boardSeq", boardSeq);
		
		return session.selectOne("dao.BoardDAO.selectOne", map);
	}

	public void insertProcedure(BoardVO boardVO) {
		session.selectOne("dao.BoardDAO.insertProcedure", boardVO);
	}

	public void deleteProcedure(String boardSeq) {
		session.selectOne("dao.BoardDAO.deleteProcedure", boardSeq);
	}
}
