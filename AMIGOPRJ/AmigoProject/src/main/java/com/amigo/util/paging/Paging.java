package com.amigo.util.paging;

public class Paging {
	private static final int BLOCK_SIZE = 7;
	private static final int PAGE_SIZE = 7;
	private int curPage;
	private int curBlock;
	
	private int totalPage;
	private int totalBlock;
	
	/*���� ���������� �����ٰԽù� ���۹�ȣ�� ��������ȣ*/
	private int startPage;
	private int endPage;
	
	/*����/������ư����*/
	private int prevPage;
	private int nextPage;
	
	/*�Խ��� �ؿ� ������ ��ȣ�����ִ°� ,1,2,3,4,...*/
	private int startBlock;
	private int endBlock;
	
	public Paging(int allData, int curPage) {
		this.curPage = curPage;
		totalPage = (int) Math.ceil((double)allData/PAGE_SIZE);
		
		/*�������*/
		curBlock = (int) Math.ceil((double)curPage/BLOCK_SIZE);
		totalBlock = (int) Math.ceil((double)totalPage/BLOCK_SIZE);
		
		startBlock = ((curBlock-1)*BLOCK_SIZE)+1;
		endBlock = startBlock+(BLOCK_SIZE-1);	
		if(endBlock > totalPage)
			endBlock = totalPage;
		
		/*������ ����*/
		startPage = ((curPage-1)*PAGE_SIZE)+1;
		endPage = startPage+(PAGE_SIZE-1);
		prevPage = (curBlock==1)?1:(curBlock-1)*BLOCK_SIZE;
		nextPage = (curBlock == totalBlock)? curPage:(curBlock*BLOCK_SIZE)+1;
		
        if(nextPage >= totalPage) 
        	nextPage = totalPage;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getStartBlock() {
		return startBlock;
	}

	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}

	public int getEndBlock() {
		return endBlock;
	}

	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}

	public static int getBlockSize() {
		return BLOCK_SIZE;
	}

	public static int getPageSize() {
		return PAGE_SIZE;
	}
}
