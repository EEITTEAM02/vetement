<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="com.news.model.*"%>
<%-- ������script���� �A���m�ߧ�αĥ� EL ���g�k���� --%>

<%
NewsVO newsVO = (NewsVO) request.getAttribute("newsVO"); //EmpServlet.java(Concroller), �s�Jreq��newsVO����
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>���u��� - listOneEmp.jsp</title>
</head>
<body bgcolor='white'>

<!-- 	<table border='1' cellpadding='5' cellspacing='0' width='600'> -->
<!-- 		<tr bgcolor='#CCCCFF' align='center' valign='middle' height='20'> -->
<!-- 			<td><h3>���u��� - ListOneEmp.jsp</h3> -->
<!-- 		              <a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></td></tr></table> -->

<table border='1' bordercolor='#CCCCFF' width='600'>
	<tr>
		<th>���u�s��</th>
		<th>���u�m�W</th>
		<th>¾��</th>
		<th>���Τ��</th>

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
