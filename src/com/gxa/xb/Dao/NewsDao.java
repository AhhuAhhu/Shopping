package com.gxa.xb.Dao;

import java.util.List;

import com.gxa.xb.pojo.News;

public interface NewsDao {
	/**
	 * 显示5个
	 * @return
	 */
	public List<News> showIndexNews();
	/**
	 * 显示所有
	 * @return
	 */
	public List<News> showAllNews();
	/**
	 * 通过ID查询具体新闻
	 * @param newsId
	 * @return
	 */
	public News selectNewsById(int newsId);
	
	public List<News> pageNews(int pageNo,int pageSize);
}
