package com.itwillbs.spring_project.vo;

public class NoticeVO {
	private int notice_num;
	private String notice_nickname;
	private String notice_write_date; 
	private String notice_title;
	private String notice_category;
	private String notice_content;
	private int notice_readcount;
	
	public NoticeVO(int notice_num, String notice_nickname, String notice_write_date, String notice_title,
			String notice_category, String notice_content, int notice_readcount) {
		super();
		this.notice_num = notice_num;
		this.notice_nickname = notice_nickname;
		this.notice_write_date = notice_write_date;
		this.notice_title = notice_title;
		this.notice_category = notice_category;
		this.notice_content = notice_content;
		this.notice_readcount = notice_readcount;
	}

	public int getNotice_num() {
		return notice_num;
	}

	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}

	public String getNotice_nickname() {
		return notice_nickname;
	}

	public void setNotice_nickname(String notice_nickname) {
		this.notice_nickname = notice_nickname;
	}

	public String getNotice_write_date() {
		return notice_write_date;
	}

	public void setNotice_write_date(String notice_write_date) {
		this.notice_write_date = notice_write_date;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_category() {
		return notice_category;
	}

	public void setNotice_category(String notice_category) {
		this.notice_category = notice_category;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public int getNotice_readcount() {
		return notice_readcount;
	}

	public void setNotice_readcount(int notice_readcount) {
		this.notice_readcount = notice_readcount;
	}

	@Override
	public String toString() {
		return "NoticeVO [notice_num=" + notice_num + ", notice_nickname=" + notice_nickname + ", notice_write_date="
				+ notice_write_date + ", notice_title=" + notice_title + ", notice_category=" + notice_category
				+ ", notice_content=" + notice_content + ", notice_readcount=" + notice_readcount + "]";
	}
	
	
	
	
	
	

}
