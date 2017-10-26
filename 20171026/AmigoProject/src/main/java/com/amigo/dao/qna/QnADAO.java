package com.amigo.dao.qna;

import java.util.List;
import com.amigo.vo.qna.QnADTO.QnADTO;


public interface QnADAO {

	public void insertQna(QnADTO qnaDto);
	
	public List<QnADTO> selectQna();
	
	public QnADTO viewQna(int num);
	
	public void deleteQna(int num);
	
	public void updateQna(QnADTO qnaDto);
	
}
