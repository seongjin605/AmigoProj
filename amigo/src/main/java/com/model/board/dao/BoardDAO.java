package com.model.board.dao;

import java.util.List;

import com.model.board.dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> selectBoardList();

	public void write(BoardDTO bdto);

	public BoardDTO content_view(int bId);

	public void update(BoardDTO bdto);

	// 조회수 증가
	public void updateHit(int bId);

	public void delete(BoardDTO bdto);

	// 05. 게시글 전체 목록 ==> 검색옵션, 키워드 매개변수 추가
	public List<BoardDTO> listAll(int start, int end, String searchOption, String keyword) throws Exception;

	// 07. 게시글 레코드 갯수 메서드 추가
	public int countArticle(String searchOption, String keyword) throws Exception;
}
