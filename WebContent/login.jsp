﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<script type="text/javascript" src="js/login.js"></script>

<title>登录</title>
<link href="css/login.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="top" >
    	<iframe src="./top.jsp" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
    </div>
	<div id="loction">
    	<img src="images/site_ico.gif" />
        <p>您现在的位置：<a href="./index.jsp" target="_new">网站首页</a>>注册/登录</p>
    </div>
    <div id="center">
    	<div id="left">
    	<form action="/shopping/login" method="post">
    		<input type="hidden" name="op" value="login">
        	<table>
            	<tr>
                	<td colspan="3">
                    <img src="images/login_logo.gif" />
                    </td>
                </tr>
                <tr>
                	<td><label>用户账户/邮箱：</label></td>
                    <td>
                    <input type="text" name="userName" />
                    </td>
                    <td rowspan="2">
						<input type="submit" value="" id="btn" />
                    </td>
                </tr>
                <tr>
                	<td><label>用户密码：</label></td>
                    <td>
                    <input type="password" name="userPwd" />
                     </td>
                </tr>
            </table>
           </form>
        </div>
        
      <div id="right">
      	<table>
        	<tr>
            	<td colspan="3">
                <img src="images/register_logo.gif" />
                </td>
            </tr>
            <tr>
            	<td>
                	<label>用户账户/邮箱：</label>
                </td>
                <td>
                	<input type="text" name="userName" id="userName"  />
                </td>
                <td>
                	<input type="button" value="检测邮箱"  id="register_btn"/>
                </td>
            </tr>
            <tr>
            	<td><label>密码：</label> </td>
                <td><input type="password" name="userPwd" id="userPwd"  /></td>
                <td><font>登录密码</font></td>
            </tr>
            <tr>
            		<td><label>确认密码：</label> </td>
                <td><input type="password" name="userPwdTo" id="userPwdTo"  /></td>
                <td><font>请再次输入密码</font></td>
            </tr>
        </table>
      <span id="select">
      	<input type="checkbox"  onclick="test()" name="chekbox" value="1" id="chekbox" /><font>高级选项</font>&nbsp;&nbsp;&nbsp;&nbsp;
        <label>高级选项填写关于配送的信息。若勾选此项，则以下必填。</label>
      </span>
      <div id="register_bootm">
      		<table>
            	<tr>
                	<td>
                    	<label>收货人姓名：</label>
                    </td>
                    <td>
                    	<input type="text" name="userInfoName" id="userInfoName" />
                    </td>
                    <td>
                   	  <font>请填写真实姓名</font>
                    </td>
                </tr>
                <tr>
                	<td>
                    	<label>移动电话：</label>
                    </td>
                    <td>
                    	                    	<input type="text" name="tel" id="tel" />
                    </td>
                    <td>
                    	<font>请填写收货电话</font>
                    </td>
                </tr>
                <tr>
                	<td>
                    	<label>收货地址：</label>
                    </td>
                    <td>
                    	                    	<input type="text" name="address" id="address" />
                    </td>
                    <td>
                    	<font>请填写发货地址</font>
                    </td>
                </tr>
               
            </table>
      
      </div>
      <span id="subSpan">
      	  <input type="submit" id="sub" value=""/>
      </span>
      </div>
      
    </div>
    <div id="bootm">
    	<iframe src="bootm.html" frameborder="0" scrolling="no" width="100%" height="100%">
        </iframe>
    </div>
</body>
</html>
