package com.service.qna;

import java.util.List;

import org.springframework.stereotype.Service;

import com.model.qna.dto.QnADTO;


public interface QnaService {

	public void insertQna(QnADTO qnaDto);
	public List<QnADTO> selectQna();
}
