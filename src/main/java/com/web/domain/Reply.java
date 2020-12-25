package com.web.domain;

public class Reply {
	private int idx;
	private int boardIdx;
	private int replyIdx;
	private String contents;
	public Reply() {
		// TODO Auto-generated constructor stub
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getReplyIdx() {
		return replyIdx;
	}
	public void setReplyIdx(int replyIdx) {
		this.replyIdx = replyIdx;
	}
	public Reply(int idx, int boardIdx, int replyIdx, String contents) {
		super();
		this.idx = idx;
		this.boardIdx = boardIdx;
		this.replyIdx = replyIdx;
		this.contents = contents;
	}
	
}
