package com.gxa.xb.pojo.mapping;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.gxa.xb.Util.RowToObject;
import com.gxa.xb.pojo.News;

public class NewsMapping implements RowToObject{

	@Override
	public Object makeRowToObject(ResultSet rs) {
		// TODO Auto-generated method stub
		News news = new News();
		try {
			news.setNewsId(rs.getInt("newsId"));
			news.setNewsTitle(rs.getString("newsTitle"));
			news.setNewsContext(rs.getString("newsContext"));
			news.setNewsAuthor(rs.getString("newsAuthor"));
			news.setNewsTime(rs.getString("newsTime"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return news;
	}
	
}
