package com.amigo.dao.qna;

import java.util.List;
import javax.inject.Inject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.amigo.vo.qna.QnADTO;

@Repository
public class QnADAOImpl implements QnADAO {

	@Inject
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertQna(QnADTO qnaDto) {
		// TODO Auto-generated method stub
		sqlSession.insert("insertQna", qnaDto);
	}

	@Override
	public List<QnADTO> selectQna() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectQna");
	}
	
	@Override
	public QnADTO viewQna(int num) {
		// TODO Auto-generated method stub
		System.out.println("=========================num"+num);
		return sqlSession.selectOne("viewQna", num);
	}
	
	//================================
	
	@Override
	public void deleteQna(int num) {
		// TODO Auto-generated method stub
		sqlSession.delete("deleteQna", num);
	}
	
	@Override
	public void updateQna(QnADTO qnaDto) {
		// TODO Auto-generated method stub
		System.out.println(qnaDto.toString());
		sqlSession.update("updateQna", qnaDto);
	}
	
}
