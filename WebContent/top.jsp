<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
out.println("<base href=\""+basePath+"\">");
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>top</title>
<link href="css/top.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="big">
    	<div id="logo">
        	<img src="images/logo.gif" />
    </div>
        <div id="meau">
        		<table  >
                	<tr>
                    	<td>
                            <img src="images/cart.gif"/>
                            <a href="./index.jsp" target="_new">首页|</a>
                        </td>
                        <td>
                            <img src="images/cart.gif"/>
                            <a href="#">购物车|</a>
                        </td>
                        <td>
                            <img src="images/cart.gif"/>
                            <a href="#">我的信息|</a>
                            </td>
                        <td>
                            <img src="images/cart.gif"/>
                            <a href="#">退出|</a>
                           </td>
                        <td>
                            <img src="images/cart.gif"/>
                            <a href="#">收藏本站|</a>
                        </td>
                        <td>
                            <img src="images/cart.gif"/>
                            <a href="#">帮助|</a>
                        </td>
                 	</tr>
                
                </table>
                
                
    </div>
    
    <div id="userInfo">
    	<p>
        	 <c:if test="${user!=null}">
               <font>您好，<label style="font-size:20px;">${user.userName}</label>欢迎光临千里之行购买旅游用品！</font>
               <a href="/shopping/login?op=exit" target="_new">[注销]</a>
              </c:if>
        	
        	<font>
        	  <c:if test="${user==null}">
        	  <font>您好，欢迎光临千里之行购买旅游用品！</font>
            	<a href="./login.jsp" target="_new">[登录]</a>
                <a href="./login.jsp" target="_new">[免费注册]</a>
              </c:if>
             
                
            </font>
        </p>
        
    </div>
    <div id="selectGoods">
    	<form method="post" action="www.b.com">
        	<label>商品关键词：</label>
            <input type="text" id="goodsName" name="goodsName" />
            <input id="sub" type="submit" value=""/>

        </form>

    </div>
     <p>热门商品：登山攀岩器材、户外服装、户外桌椅、睡袋垫子、野营用品...</p>
</div>
</body>
</html>
