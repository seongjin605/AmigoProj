package com.amigo.service.board;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.amigo.dao.board.BoardDAO;
import com.amigo.vo.board.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	@Override
	public List<BoardVO> selectBoardVOs(int cNum) {
		// TODO Auto-generated method stub
		return dao.selectBoardVOs(cNum);
	}

	@Override
	public void insertBoardVO(BoardVO board) {
		// TODO Auto-generated method stub
		dao.insertBoardVO(board);
	}

	@Override
	public void updateBoardVO(Map<String, Object> map) {
		// TODO Auto-generated method stub
		dao.updateBoardVO(map);
		
	}

}
