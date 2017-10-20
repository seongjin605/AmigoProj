package com.model.qna.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.model.qna.dto.QnADTO;

@Repository
public class QnADAOImpl implements QnADAO {

	@Inject
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertQna(QnADTO qnaDto) {
		// TODO Auto-generated method stub
		sqlSession.insert("qna.insertQna", qnaDto);
	}

	@Override
	public List<QnADTO> selectQna() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("qna.selectQna");
	}
}
