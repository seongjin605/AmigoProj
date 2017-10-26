package com.amigo.util.paging;

public class Paging {
	private static final int BLOCK_SIZE = 7;
	private static final int PAGE_SIZE = 7;
	private int curPage;
	private int curBlock;
	
	private int totalPage;
	private int totalBlock;
	
	/*현재 페이지에서 보여줄게시물 시작번호와 마지막번호*/
	private int startPage;
	private int endPage;
	
	/*이전/다음버튼구현*/
	private int prevPage;
	private int nextPage;
	
	/*게시판 밑에 페이지 번호적어주는것 ,1,2,3,4,...*/
	private int startBlock;
	private int endBlock;
	
	public Paging(int allData, int curPage) {
		this.curPage = curPage;
		totalPage = (int) Math.ceil((double)allData/PAGE_SIZE);
		
		/*블락설정*/
		curBlock = (int) Math.ceil((double)curPage/BLOCK_SIZE);
		totalBlock = (int) Math.ceil((double)totalPage/BLOCK_SIZE);
		
		startBlock = ((curBlock-1)*BLOCK_SIZE)+1;
		endBlock = startBlock+(BLOCK_SIZE-1);	
		if(endBlock > totalPage)
			endBlock = totalPage;
		
		/*페이지 설정*/
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
