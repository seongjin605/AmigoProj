package com.model.qna.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.model.qna.dto.QnADTO;

public interface QnADAO {

	public void insertQna(QnADTO qnaDto);
	
	public List<QnADTO> selectQna();
	
	public QnADTO viewQna(int num);
	
	public void deleteQna(int num);
	
	public void updateQna(QnADTO qnaDto);
	
}
