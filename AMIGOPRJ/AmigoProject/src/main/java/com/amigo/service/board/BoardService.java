package com.amigo.service.board;

import java.util.List;
import java.util.Map;

import com.amigo.vo.board.BoardVO;

public interface BoardService {
	public List<BoardVO> selectBoardVOs(int cNum);
	public void insertBoardVO(BoardVO board);
	public void updateBoardVO(Map<String,Object> map);
}
