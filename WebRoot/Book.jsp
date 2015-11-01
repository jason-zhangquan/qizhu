<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'BookList.jsp' starting page</title>
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
    我的小书店----我的<a href="BookShop.jsp">购物车</a>
	<hr>
	<form name="form1" method="post" action="BookShopServlet.do">
	  <table width="121" border="1" align="left" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
	  
	   <input type="hidden" name="bno" value="ISN00001">
        <tr>
          <td width="117"><img src="images/23751089-1_l_1.jpg" width="150" height="150"></td>
        </tr>
        <tr>
          <td><div align="center">你要好好爱自己1 <input type="hidden" name="bname" value="你要好好爱自己1" ></div></td>
        </tr>
        <tr>
          <td><div align="center">价格：30.5 <input type="hidden" name="price" value="30.5"></div></td>
        </tr>
        <tr>
          <td><div align="center">数量
            <input name="num" type="text" size="5">
          </div></td>
        </tr>
        <tr>
          <td><label>
            
          <div align="center">
            <input type="submit" name="Submit" value="购买">
          </div>
          </label></td>
        </tr>
      </table>
     </form>
     <form name="form2" method="post" action="BookShopServlet.do">
      <table width="121" border="1" align="left" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
	  
	   <input type="hidden" name="bno" value="ISN00002">
        <tr>
          <td width="117"><img src="images/23723602-1_l_1.jpg" width="150" height="150"></td>
        </tr>
        <tr>
          <td><div align="center">你要好好爱自己 2<input type="hidden" name="bname" value="你要好好爱自己2" ></div></td>
        </tr>
        <tr>
          <td><div align="center">价格：30.5 <input type="hidden" name="price" value="30.5"></div></td>
        </tr>
        <tr>
          <td><div align="center">数量
            <input name="num" type="text" size="5">
          </div></td>
        </tr>
        <tr>
          <td><label>
            
          <div align="center">
            <input type="submit" name="Submit" value="购买">
          </div>
          </label></td>
        </tr>
      </table>
       </form>
     <form name="form3" method="post" action="BookShopServlet.do">
      <table width="121" border="1" align="left" cellpadding="0" cellspacing="0" bordercolor="#00CCFF">
	  
	   <input type="hidden" name="bno" value="ISN00003">
        <tr>
          <td width="117"><img src="images/23314723-1_l_2.jpg" width="150" height="150"></td>
        </tr>
        <tr>
          <td><div align="center">你要好好爱自己3 <input type="hidden" name="bname" value="你要好好爱自己3" ></div></td>
        </tr>
        <tr>
          <td><div align="center">价格：30.5 <input type="hidden" name="price" value="30.5"></div></td>
        </tr>
        <tr>
          <td><div align="center">数量
            <input name="num" type="text" size="5">
          </div></td>
        </tr>
        <tr>
          <td><label>
            
          <div align="center">
            <input type="submit" name="Submit" value="购买">
          </div>
          </label></td>
        </tr>
      </table>
  </form>
	
	<br>
	<br>
	${param.name }
${param.name}
${header["User-Agent"]}
${pageContext.request.remoteAddr }
 ${pageContext.request.queryString}         取得请求的参数字符串
      ${pageContext.request.requestURL}         取得请求的URL，但不包括请求之参数字符串
       ${pageContext.servletContext.serverInfo}   取得主机端的服务信息
  </body>
</html>
