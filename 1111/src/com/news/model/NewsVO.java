package com.news.model;

import java.sql.Date;

public class NewsVO implements java.io.Serializable{
	private Integer newsno;
	private String title;
	private String content;
	private Date pubdate;
	
	public Integer getNewsno() {
		return newsno;
	}
	public void setNewsno(Integer newsno) {
		this.newsno = newsno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPubdate() {
		return pubdate;
	}
	public void setPubdate(Date pubdate) {
		this.pubdate = pubdate;
	}

}
