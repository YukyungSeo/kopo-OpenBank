package kr.ac.kopo.vo;

public class BoardVO {

	private String boardSeq;
	private String boardType;
	private String boardTypeName;
	private String superBoardSeq;
	private String tabCnt;
	private String writer;
	private String writerName;
	private String title;
	private String content;
	private String viewCnt;
	private String regDate;

	public BoardVO() {
		super();
	}

	public BoardVO(String boardSeq, String boardType, String boardTypeName, String superBoardSeq, String tabCnt,
			String writer, String writerName, String title, String content, String viewCnt, String regDate) {
		super();
		this.boardSeq = boardSeq;
		this.boardType = boardType;
		this.boardTypeName = boardTypeName;
		this.superBoardSeq = superBoardSeq;
		this.tabCnt = tabCnt;
		this.writer = writer;
		this.writerName = writerName;
		this.title = title;
		this.content = content;
		this.viewCnt = viewCnt;
		this.regDate = regDate;
	}

	public String getBoardSeq() {
		return boardSeq;
	}

	public void setBoardSeq(String boardSeq) {
		this.boardSeq = boardSeq;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getBoardTypeName() {
		return boardTypeName;
	}

	public void setBoardTypeName(String boardTypeName) {
		this.boardTypeName = boardTypeName;
	}

	public String getSuperBoardSeq() {
		return superBoardSeq;
	}

	public void setSuperBoardSeq(String superBoardSeq) {
		this.superBoardSeq = superBoardSeq;
	}

	public String getTabCnt() {
		return tabCnt;
	}

	public void setTabCnt(String tabCnt) {
		this.tabCnt = tabCnt;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWriterName() {
		return writerName;
	}

	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(String viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "BoardVO [boardSeq=" + boardSeq + ", boardType=" + boardType + ", boardTypeName=" + boardTypeName
				+ ", superBoardSeq=" + superBoardSeq + ", tabCnt=" + tabCnt + ", writer=" + writer + ", writerName="
				+ writerName + ", title=" + title + ", content=" + content + ", viewCnt=" + viewCnt + ", regDate="
				+ regDate + "]";
	}

}
