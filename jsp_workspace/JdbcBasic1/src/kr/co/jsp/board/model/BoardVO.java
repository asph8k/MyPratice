package kr.co.jsp.board.model;

import java.sql.Timestamp;

public class BoardVO {
	
	private int boardId;
	private String writer;
	private String title;
	private String content;
	private Timestamp regdate;
	
	public BoardVO() {}

	public BoardVO(int boardId, String writer, String title, String content, Timestamp regdate) {
		super();
		this.boardId = boardId;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setReg_date(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}
