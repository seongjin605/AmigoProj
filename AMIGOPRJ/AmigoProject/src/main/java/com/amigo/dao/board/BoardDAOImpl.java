package com.amigo.dao.board;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.amigo.vo.board.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;
	
	@Override
	public List<BoardVO> selectBoardVOs(int cNum) {
		// TODO Auto-generated method stub
		return session.selectList("selectBoardVOs", cNum);
	}

	@Override
	public void insertBoardVO(BoardVO board) {
		// TODO Auto-generated method stub
		session.insert("insertBoardVO", board);	
	}

	@Override
	public void updateBoardVO(Map<String, Object> map) {
		// TODO Auto-generated method stub
		session.update("updateBoardVO", map);
	}

}
