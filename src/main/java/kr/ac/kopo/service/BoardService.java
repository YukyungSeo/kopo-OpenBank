package kr.ac.kopo.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.vo.BoardVO;

public class BoardService {

	private int pageSize = 10;

	public List<BoardVO> getQnABoardListPage(int page) {
		return getBoardList(2).subList((page - 1) * pageSize, page * pageSize);
	}

	private List<BoardVO> getBoardList(int boardType) {
		System.out.println("QnA 게시글 가져오는 중...");

		BoardDAO boardDAO = new BoardDAO();

		List<BoardVO> headList = boardDAO.selectQnAHeadBoard(String.valueOf(boardType));

		Set<String> set = new HashSet<String>();
		for (BoardVO boardVO : headList) {
			set.add(boardVO.getBoardSeq());
		}

		List<BoardVO> commendList = boardDAO.selectQnACommendBoard(String.valueOf(boardType), set);
		while (commendList.size() != 0) {
			for (BoardVO commend : commendList) {
				int index = 0;
				for (BoardVO head : headList) {
					if (head.getBoardSeq().equals(commend.getSuperBoardSeq())) {
						index = headList.indexOf(head);
						break;
					}
				}

				headList.add(index + 1, commend);
			}

			set.clear();
			for (BoardVO boardVO : commendList) {
				set.add(boardVO.getBoardSeq());
			}

			commendList = boardDAO.selectQnACommendBoard(String.valueOf(boardType), set);
		}

		return headList;
	}

}
