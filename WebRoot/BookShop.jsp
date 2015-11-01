<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.BookSys.Entity.*" %>
<%@taglib prefix="qizhu" uri="http://www.qi-zhu.com/mytag/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'BookShop.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <p>我的购物车</p><hr />
<p>&nbsp;</p>
<table width="885" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#33CCFF">
  <tr>
    <td width="128">编号</td>
    <td width="336">书名</td>
    <td width="179">价格</td>
    <td width="111">数量</td>
    <td width="234">总价格</td>
  </tr>
  <%
    List<Book> books=(List<Book>)session.getAttribute("books");
  	double sum = 0;
   	for(Book book : books){
   		out.println("<tr>");
   		out.println("<td>"+book.getBno()+"</td>");
   		out.println("<td>"+book.getBname()+"</td>");
   		out.println("<td>"+book.getPrice()+"</td>");
   		out.println("<td>"+book.getNum()+"</td>");
   		out.println("<td>"+book.getSunPrice()+"</td>");
   		out.println("</tr>");
   		sum=sum+book.getSunPrice();
   	}
   %>
  
  <tr>
    <td colspan="3">&nbsp;</td>
    <td>总价：</td>
    <td><%out.println(sum); %></td>
  </tr>
</table>
<qizhu:hello value="hello" count="2"/>


<br><br><a href="Book.jsp?name=zhang">继续购买</a>
  </body>
</html>
