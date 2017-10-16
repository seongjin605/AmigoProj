package com.service.board;

import java.util.List;
import org.springframework.stereotype.Service;

import com.model.board.dto.BoardDTO;

@Service
public interface BoardService {

	public List<BoardDTO> selectBoardList();
	public void write(BoardDTO boardDTO);
	public BoardDTO content_view(int bId);
	public void update(BoardDTO bdto);
	public void updateHit(int boardId);
	public void delete(BoardDTO boardDTO);
	// 05. 게시글 전체 목록 ==> 검색옵션, 키워드 매개변수 추가
	public List<BoardDTO> listAll(int start,int end,String searchOption, String keyword) throws Exception;
	// 07. 게시글 레코드 갯수 메서드 추가
	public int countArticle(String searchOption, String keyword) throws Exception;
}
