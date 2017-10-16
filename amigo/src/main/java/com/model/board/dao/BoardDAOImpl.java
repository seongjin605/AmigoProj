package com.model.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.model.board.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> selectBoardList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("board.selectBoardList");
	}
	@Override
	public void write(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		 sqlSession.insert("board.insertBoardList", boardDTO);
	}
	@Override
	public BoardDTO content_view(int boardId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("board.contentView", boardId);
	}
	@Override
	public void update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		sqlSession.selectOne("board.update",boardDTO);
	}
	@Override
	public void updateHit(int boardId) {
		// TODO Auto-generated method stub
	sqlSession.selectOne("board.updateHit",boardId);
	}
	@Override
	public void delete(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		sqlSession.selectOne("board.delete",boardDTO);
	}
	@Override
	public List<BoardDTO> listAll(int start,int end,String searchOption, String keyword) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		//BETWEEN #{start},#{end}에 입력될 값을 맵에
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("board.listAll",map);
	}
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		// TODO Auto-generated method stub
		Map<String,String> map =new HashMap<String,String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne("board.countArticle",map);
	}
}
