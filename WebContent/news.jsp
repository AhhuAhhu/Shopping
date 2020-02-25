<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻公告</title>


<link href="css/news.css" rel="stylesheet" type="text/css" />
</head>

<body>
		<div id="top" >
    		<iframe src="top.jsp" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
		</div>
   <div id="cennter">
     <div id="loction">
    	<img src="images/site_ico.gif" />
        <p>您现在的位置：<a href="/shopping/login?op=index" target="_new">网站首页</a>>新闻公告</p>
    </div>
    
    	<div id="newss">
              <table>
                <thead>
                    <th>新闻标题</th>
                    <th>作者</th>
                    <th>发布时间</th>
                </thead>
                <c:forEach items="${pageBean.datalist}" var="news">
                <tr>
                    <td>
                        <a href="/shopping/login?op=selectNews&newsId=${news.newsId}">
                       	${news.newsTitle}
                        </a>
                    </td>
                    <td>admin</td>
                    <td>${news.newsTime}</td>
                </tr>
              </c:forEach>   
            </table>
            
            <!--分页 -->
           <div id="page">
           		<span>当前${pageBean.pageNo}/${pageBean.pageNum}</span>&nbsp;&nbsp;&nbsp;&nbsp;
           		 <a href="/shopping/login?op=newsAll&pageNo=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                 <a href="/shopping/login?op=newsAll&pageNo=${pageBean.pageNo-1}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                 <a href="/shopping/login?op=newsAll&pageNo=${pageBean.pageNo+1}">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="/shopping/login?op=newsAll&pageNo=${pageBean.pageNum}">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;
           </div>
        </div>
        
  </div>
        
        
            <div id="bootm" >
    	    	<iframe src="bootm.html" frameborder="0" scrolling="no" width="100%" height="100%"></iframe>
    </div>
</body>
</html>
