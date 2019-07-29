package com.web.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;

import com.web.domain.Board;
@Repository("BoardMapper")
public interface BoardMapper {
	public boolean addBoard(Board board);
	public List<Board> getBoard();
	public boolean updateStatus(Board board);
	public boolean deleteStatus(Board board);
	
}
