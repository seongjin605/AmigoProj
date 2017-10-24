package com.service.board;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;

import com.model.board.dao.BoardDAO;
import com.model.board.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDAO;

	@Override
	public List<BoardDTO> selectBoardList() {
		// TODO Auto-generated method stub
		return boardDAO.selectBoardList();
	}

	@Override
	public void write(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		boardDAO.write(boardDTO);
	}

	@Override
	public BoardDTO content_view(int bId) {
		// TODO Auto-generated method stub
		return boardDAO.content_view(bId);
	}

	@Override
	public void update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		boardDAO.update(boardDTO);
	}

	@Override
	public void updateHit(int bId) {
		// TODO Auto-generated method stub
		boardDAO.updateHit(bId);
	}

	@Override
	public void delete(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		boardDAO.delete(boardDTO);
	}

	@Override
	public List<BoardDTO> listAll(int start, int end, String searchOption, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listAll(start, end, searchOption, keyword);
	}

	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.countArticle(searchOption, keyword);
	}
}
