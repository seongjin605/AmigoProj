package com.amigo.service.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.amigo.dao.qna.QnADAO;
import com.amigo.vo.qna.QnADTO;


@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnADAO dao;

	@Override
	public void insertQna(QnADTO qnaDto) {
		// TODO Auto-generated method stub
		dao.insertQna(qnaDto);
	}

	@Override
	public List<QnADTO> selectQna() {
		// TODO Auto-generated method stub
		return dao.selectQna();
	}
	
	@Override
	public QnADTO viewQna(int num) {
		// TODO Auto-generated method stub
		return dao.viewQna(num);
	}
	
	//=================================
	
	@Override
	public void deleteQna(int num) {
		// TODO Auto-generated method stub
		dao.deleteQna(num);
	}
	
	@Override
	public void updateQna(QnADTO qnaDto) {
		// TODO Auto-generated method stub
		dao.updateQna(qnaDto);
	}
}
