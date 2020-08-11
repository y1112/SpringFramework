package com.spring.vo;

public class PagingMaker {
	private int totalData;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;

	private int displayPageNum = 10;

	private PageCriteria cri;

	public void setCri(PageCriteria cri) {
		this.cri = cri;
	}

	public void setTotalData(int totalData) {
		this.totalData = totalData;
		
		getPagingData();
	}

	private void getPagingData() {
		endPage = (int) (Math.ceil((cri.getPage() / (double) displayPageNum)) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;

		int finalEndPage = (int) Math.ceil(totalData / (double) cri.getNumPerPage());

		if (endPage > finalEndPage) {
			endPage = finalEndPage;
		}

		prev = startPage == 1 ? false : true;
		next = endPage * cri.getNumPerPage() >= totalData ? false : true;
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

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getTotalData() {
		return totalData;
	}

	public PageCriteria getCri() {
		return cri;
	}

}
