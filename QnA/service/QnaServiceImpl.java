package com.service.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.qna.dao.QnADAO;
import com.model.qna.dto.QnADTO;

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
}
