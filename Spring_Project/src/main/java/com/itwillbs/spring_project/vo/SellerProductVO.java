package com.itwillbs.spring_project.vo;

public class SellerProductVO {
	private int sell_num;
	private String sell_member_code;
	private String sell_title;
	private String sell_category;
	private String sell_category_detail;
	private String sell_content;
	private int sell_price;
	private String sell_color;
	private String sell_size;
	private String sell_brand;
	private String sell_write_date;
	private int sell_readcount; 
	private int sell_likecount;
	private int sell_list_num;
	private String sell_list_item_status;
	private String sell_list_approve_date;
	private String sell_list_approve_nickname;
	private int sell_img_real_num;
	private int sell_img_num;
	private String sell_img_name;
	private String sell_img_real_name;
	private String buy_member_code;
	private int buy_item_num;
	private int buy_price;
	private int buy_point;
	private String buy_sell_item_date;
	private String buy_item_status;
	
	public SellerProductVO(int sell_num, String sell_member_code, String sell_title, String sell_category,
			String sell_category_detail, String sell_content, int sell_price, String sell_color, String sell_size,
			String sell_brand, String sell_write_date, int sell_readcount, int sell_likecount, int sell_list_num,
			String sell_list_item_status, String sell_list_approve_date, String sell_list_approve_nickname,
			int sell_img_real_num, int sell_img_num, String sell_img_name, String sell_img_real_name,
			String buy_member_code, int buy_item_num, int buy_price, int buy_point, String buy_sell_item_date,
			String buy_item_status) {
		super();
		this.sell_num = sell_num;
		this.sell_member_code = sell_member_code;
		this.sell_title = sell_title;
		this.sell_category = sell_category;
		this.sell_category_detail = sell_category_detail;
		this.sell_content = sell_content;
		this.sell_price = sell_price;
		this.sell_color = sell_color;
		this.sell_size = sell_size;
		this.sell_brand = sell_brand;
		this.sell_write_date = sell_write_date;
		this.sell_readcount = sell_readcount;
		this.sell_likecount = sell_likecount;
		this.sell_list_num = sell_list_num;
		this.sell_list_item_status = sell_list_item_status;
		this.sell_list_approve_date = sell_list_approve_date;
		this.sell_list_approve_nickname = sell_list_approve_nickname;
		this.sell_img_real_num = sell_img_real_num;
		this.sell_img_num = sell_img_num;
		this.sell_img_name = sell_img_name;
		this.sell_img_real_name = sell_img_real_name;
		this.buy_member_code = buy_member_code;
		this.buy_item_num = buy_item_num;
		this.buy_price = buy_price;
		this.buy_point = buy_point;
		this.buy_sell_item_date = buy_sell_item_date;
		this.buy_item_status = buy_item_status;
	}
	
	
	public int getSell_num() {
		return sell_num;
	}
	public void setSell_num(int sell_num) {
		this.sell_num = sell_num;
	}
	public String getSell_member_code() {
		return sell_member_code;
	}
	public void setSell_member_code(String sell_member_code) {
		this.sell_member_code = sell_member_code;
	}
	public String getSell_title() {
		return sell_title;
	}
	public void setSell_title(String sell_title) {
		this.sell_title = sell_title;
	}
	public String getSell_category() {
		return sell_category;
	}
	public void setSell_category(String sell_category) {
		this.sell_category = sell_category;
	}
	public String getSell_category_detail() {
		return sell_category_detail;
	}
	public void setSell_category_detail(String sell_category_detail) {
		this.sell_category_detail = sell_category_detail;
	}
	public String getSell_content() {
		return sell_content;
	}
	public void setSell_content(String sell_content) {
		this.sell_content = sell_content;
	}
	public int getSell_price() {
		return sell_price;
	}
	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	public String getSell_color() {
		return sell_color;
	}
	public void setSell_color(String sell_color) {
		this.sell_color = sell_color;
	}
	public String getSell_size() {
		return sell_size;
	}
	public void setSell_size(String sell_size) {
		this.sell_size = sell_size;
	}
	public String getSell_brand() {
		return sell_brand;
	}
	public void setSell_brand(String sell_brand) {
		this.sell_brand = sell_brand;
	}
	public String getSell_write_date() {
		return sell_write_date;
	}
	public void setSell_write_date(String sell_write_date) {
		this.sell_write_date = sell_write_date;
	}
	public int getSell_readcount() {
		return sell_readcount;
	}
	public void setSell_readcount(int sell_readcount) {
		this.sell_readcount = sell_readcount;
	}
	public int getSell_likecount() {
		return sell_likecount;
	}
	public void setSell_likecount(int sell_likecount) {
		this.sell_likecount = sell_likecount;
	}
	public int getSell_list_num() {
		return sell_list_num;
	}
	public void setSell_list_num(int sell_list_num) {
		this.sell_list_num = sell_list_num;
	}
	public String getSell_list_item_status() {
		return sell_list_item_status;
	}
	public void setSell_list_item_status(String sell_list_item_status) {
		this.sell_list_item_status = sell_list_item_status;
	}
	public String getSell_list_approve_date() {
		return sell_list_approve_date;
	}
	public void setSell_list_approve_date(String sell_list_approve_date) {
		this.sell_list_approve_date = sell_list_approve_date;
	}
	public String getSell_list_approve_nickname() {
		return sell_list_approve_nickname;
	}
	public void setSell_list_approve_nickname(String sell_list_approve_nickname) {
		this.sell_list_approve_nickname = sell_list_approve_nickname;
	}
	public int getSell_img_real_num() {
		return sell_img_real_num;
	}
	public void setSell_img_real_num(int sell_img_real_num) {
		this.sell_img_real_num = sell_img_real_num;
	}
	public int getSell_img_num() {
		return sell_img_num;
	}
	public void setSell_img_num(int sell_img_num) {
		this.sell_img_num = sell_img_num;
	}
	public String getSell_img_name() {
		return sell_img_name;
	}
	public void setSell_img_name(String sell_img_name) {
		this.sell_img_name = sell_img_name;
	}
	public String getSell_img_real_name() {
		return sell_img_real_name;
	}
	public void setSell_img_real_name(String sell_img_real_name) {
		this.sell_img_real_name = sell_img_real_name;
	}
	public String getBuy_member_code() {
		return buy_member_code;
	}
	public void setBuy_member_code(String buy_member_code) {
		this.buy_member_code = buy_member_code;
	}
	public int getBuy_item_num() {
		return buy_item_num;
	}
	public void setBuy_item_num(int buy_item_num) {
		this.buy_item_num = buy_item_num;
	}
	public int getBuy_price() {
		return buy_price;
	}
	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}
	public int getBuy_point() {
		return buy_point;
	}
	public void setBuy_point(int buy_point) {
		this.buy_point = buy_point;
	}
	public String getBuy_sell_item_date() {
		return buy_sell_item_date;
	}
	public void setBuy_sell_item_date(String buy_sell_item_date) {
		this.buy_sell_item_date = buy_sell_item_date;
	}
	public String getBuy_item_status() {
		return buy_item_status;
	}
	public void setBuy_item_status(String buy_item_status) {
		this.buy_item_status = buy_item_status;
	}


	@Override
	public String toString() {
		return "SellerProductVO [sell_num=" + sell_num + ", sell_member_code=" + sell_member_code + ", sell_title="
				+ sell_title + ", sell_category=" + sell_category + ", sell_category_detail=" + sell_category_detail
				+ ", sell_content=" + sell_content + ", sell_price=" + sell_price + ", sell_color=" + sell_color
				+ ", sell_size=" + sell_size + ", sell_brand=" + sell_brand + ", sell_write_date=" + sell_write_date
				+ ", sell_readcount=" + sell_readcount + ", sell_likecount=" + sell_likecount + ", sell_list_num="
				+ sell_list_num + ", sell_list_item_status=" + sell_list_item_status + ", sell_list_approve_date="
				+ sell_list_approve_date + ", sell_list_approve_nickname=" + sell_list_approve_nickname
				+ ", sell_img_real_num=" + sell_img_real_num + ", sell_img_num=" + sell_img_num + ", sell_img_name="
				+ sell_img_name + ", sell_img_real_name=" + sell_img_real_name + ", buy_member_code=" + buy_member_code
				+ ", buy_item_num=" + buy_item_num + ", buy_price=" + buy_price + ", buy_point=" + buy_point
				+ ", buy_sell_item_date=" + buy_sell_item_date + ", buy_item_status=" + buy_item_status + "]";
	}
	
	

}
