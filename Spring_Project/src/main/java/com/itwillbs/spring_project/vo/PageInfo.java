package com.itwillbs.spring_project.vo;

public class PageInfo {
	private int pageNum; // 현재 페이지 번호
	private int maxPage; // 최대 페이지 수
	private int startPage; // 시작 페이지 번호
	private int endPage; // 끝 페이지 번호
	private int listLimit; // 총 게시물 수
	
	
	public PageInfo(int pageNum, int maxPage, int startPage, int endPage, int listCount, int listLimit) {
		this.pageNum = pageNum;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.listLimit = listLimit;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
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
	public int getListLimit() {
		return listLimit;
	}
	public void setListLimit(int listLimit) {
		this.listLimit = listLimit;
	}
	@Override
	public String toString() {
		return "PageInfo [pageNum=" + pageNum + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage="
				+ endPage + ", listLimit=" + listLimit + "]";
	}
	
	

}
