package com.gxa.xb.Dao.impl;

import java.util.List;

import com.gxa.xb.Dao.NewsDao;
import com.gxa.xb.Util.JDBCUtil;
import com.gxa.xb.pojo.News;
import com.gxa.xb.pojo.mapping.NewsMapping;

public class NewsDaoImpl implements NewsDao {

	@Override
	public List<News> showIndexNews() {
		// TODO Auto-generated method stub
		String sql = "select * from news order by newsTime desc limit 0,5";
		
		return JDBCUtil.executeQuery(sql, new NewsMapping());
	}

	@Override
	public List<News> showAllNews() {
		String sql = "select * from news order by newsTime desc ";
		
		return JDBCUtil.executeQuery(sql, new NewsMapping());
	}

	@Override
	public News selectNewsById(int newsId) {
		// TODO Auto-generated method stub
		String sql = "select * from news where newsId = ? ";
		return (News) JDBCUtil.executeQueryOne(sql, new NewsMapping(), newsId);
	}

	@Override
	public List<News> pageNews(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		String sql = "select * from news order by newsTime desc limit ? ,?";
		
		return JDBCUtil.executeQuery(sql, new NewsMapping(),(pageNo-1)*pageSize,pageSize);
	}

}
