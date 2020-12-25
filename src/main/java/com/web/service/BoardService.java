package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.domain.Board;
import com.web.domain.Reply;
import com.web.mapper.BoardMapper;

@Service
public class BoardService {
	@Autowired private BoardMapper m;
	public boolean addBoard(Board b) {
		return m.addBoard(b);
	}

	public List<Board> getBoard(){
		return m.getBoard();
	}
	public Board getBoardOne(int idx) {
		return m.getBoardOne(idx);
	}
	public boolean addReply(Reply r) {
		return m.addReply(r);
	}
	public List<Reply> getReply(int boardIdx) {
		return m.getReply(boardIdx);
	}
}
