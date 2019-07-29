package com.web.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.domain.Board;
import com.web.mapper.BoardMapper;

@Service
public class BoardService {
	@Autowired BoardMapper boardMapper;
	public boolean addBoard(Board board) {
		return boardMapper.addBoard(board);
	}
	
	public List<Board> getBoard() {
		return boardMapper.getBoard();
	}
	public boolean updateStatus(String password) {
		return boardMapper.updateStatus(new Board(0, null, password, null, null, null, null));
	}
	public boolean deleteStatus(String password, int id) {
		return boardMapper.deleteStatus(new Board(id, null, password, null, null, null, null));
	}
}
