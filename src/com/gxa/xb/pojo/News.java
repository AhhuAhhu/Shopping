package com.gxa.xb.pojo;

public class News {
	private int newsId;
	private String newsTitle;
	private String newsContext;
	private String newsAuthor;
	private String newsTime;
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContext() {
		return newsContext;
	}
	public void setNewsContext(String newsContext) {
		this.newsContext = newsContext;
	}
	public String getNewsAuthor() {
		return newsAuthor;
	}
	public void setNewsAuthor(String newsAuthor) {
		this.newsAuthor = newsAuthor;
	}
	public String getNewsTime() {
		return newsTime;
	}
	public void setNewsTime(String newsTime) {
		this.newsTime = newsTime;
	}
	public News(String newsTitle, String newsContext, String newsAuthor,
			String newsTime) {
		super();
		this.newsTitle = newsTitle;
		this.newsContext = newsContext;
		this.newsAuthor = newsAuthor;
		this.newsTime = newsTime;
	}
	public News() {
		super();
		
	}
	
}
