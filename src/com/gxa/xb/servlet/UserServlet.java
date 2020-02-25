package com.gxa.xb.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gxa.xb.Dao.NewsDao;
import com.gxa.xb.Dao.UserDao;
import com.gxa.xb.Dao.impl.NewsDaoImpl;
import com.gxa.xb.Dao.impl.UserDaoImpl;
import com.gxa.xb.Util.PageBean;
import com.gxa.xb.pojo.News;
import com.gxa.xb.pojo.UserInfo;


public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final int PAGE_SIZE = 5;
      UserDao userDao = new UserDaoImpl();
      NewsDao newsDao = new NewsDaoImpl() ;
      PageBean pageBean = new PageBean();
      String pageNo = null;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op = request.getParameter("op");
		if("exit".equals(op)){
			request.getSession().removeAttribute("user");//移除指定的session
			response.sendRedirect("./login.jsp");//重定向
		}else if("index".equals(op)){
			//显示首页需要的数据
			List<News> newses = newsDao.showIndexNews();
			for (News news : newses) {
				if(news.getNewsTitle().length()>6){
					news.setNewsTitle(news.getNewsTitle().substring(0, 6)+"...");
				}
			}
			request.getSession().setAttribute("newses", newses);
			response.sendRedirect("/shopping/index.jsp");
		}else if("selectNews".equals(op)){
			int newsId = Integer.parseInt(request.getParameter("newsId"));
			News news = newsDao.selectNewsById(newsId);
			request.getSession().setAttribute("news", news);
			response.sendRedirect("/shopping/newsInfo.jsp");
		}else if("newsAll".equals(op)){
			//获取新闻列表
			pageNo = request.getParameter("pageNo");
			List<News> newslist = newsDao.showAllNews();
			pageBean.setTotal(newslist.size());
			if(pageNo==null||"".equals(pageNo)){
				pageBean.setPageNo(1);
			}else{
				pageBean.setPageNo(Integer.parseInt(pageNo));
			}
			pageBean.setPageSize(PAGE_SIZE);
			pageBean.setDatalist(newsDao.pageNews(pageBean.getPageNo(), PAGE_SIZE));
			request.getSession().setAttribute("pageBean", pageBean);
			response.sendRedirect("/shopping/news.jsp");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op = request.getParameter("op");
		if("login".equals(op)){
			String name = request.getParameter("userName");//获取用户提交的账户
			String pwd = request.getParameter("userPwd");
			UserInfo user = userDao.userLogin(new UserInfo(name,pwd));
			if(user!=null){
				request.getSession().setAttribute("user", user);
				response.sendRedirect("/shopping/login?op=index");
			}else{
				response.sendRedirect("./login.jsp");//重定向
				//request.getRequestDispatcher("/login.jsp").forward(request, response);//转发
			
			}
		}
		
	}

}
