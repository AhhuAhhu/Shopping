<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻内容</title>


<link href="css/news.css" rel="stylesheet" type="text/css" />
</head>

<body>
		<div id="top" >
    		<iframe src="top.jsp" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
		</div>
   <div id="cennter">
     <div id="loction">
    	<img src="images/site_ico.gif" />
        <p>您现在的位置：<a href="/shopping/login?op=newsAll" target="_new">网站公告</a>>新闻内容</p>
    </div>
    
    	<div id="newsContext">
            <h3>${news.newsTitle}</h3>
            <p id="time">发布时间：${news.newsTime}					                                      		       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            发布者：admin</p>
            <hr/>
            <p id="context">
            	${news.newsContext}	
            </p>
        </div>
        
  </div>
        
        
            <div id="bootm" >
    	    	<iframe src="bootm.html" frameborder="0" scrolling="no" width="100%" height="100%"></iframe>
    </div>
</body>
</html>
