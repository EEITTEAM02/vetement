<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.news.model.*"%>
<%-- 此頁為script取值 ，應練習改用採用 EL 的寫法取值 --%>

<%
NewsVO newsVO = (NewsVO) request.getAttribute("newsVO"); //EmpServlet.java(Concroller), 存入req的newsVO物件
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>員工資料 - listOneEmp.jsp</title>
</head>
<body bgcolor='white'>

<!-- 	<table border='1' cellpadding='5' cellspacing='0' width='600'> -->
<!-- 		<tr bgcolor='#CCCCFF' align='center' valign='middle' height='20'> -->
<!-- 			<td><h3>員工資料 - ListOneEmp.jsp</h3> -->
<!-- 		              <a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">回首頁</a></td></tr></table> -->

<table border='1' bordercolor='#CCCCFF' width='600'>
	<tr>
		<th>員工編號</th>
		<th>員工姓名</th>
		<th>職位</th>
		<th>雇用日期</th>

	</tr>
	<tr align='center' valign='middle'>
		<td><%=newsVO.getNewsno()%></td>
		<td><%=newsVO.getTitle()%></td>
		<td><%=newsVO.getContent()%></td>
		<td><%=newsVO.getPubdate()%></td>

	</tr>
</table>

</body>
</html>
