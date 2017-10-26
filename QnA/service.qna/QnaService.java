package com.amigo.service.qna;

import java.util.List;

import org.springframework.stereotype.Service;

import com.amigo.vo.qna.QnADTO;




public interface QnaService {

	public void insertQna(QnADTO qnaDto);
	
	public List<QnADTO> selectQna();
	
	public QnADTO viewQna(int num);

	public void deleteQna(int num);
	
	public void updateQna(QnADTO qnaDto);
}
