<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>公告</title>
	</head>
	<body>
	<jsp:useBean id="newsSvc" scope="page" class="com.news.model.NewsService" />
		<ul>
			<li>
			    <FORM METHOD="post">
			        <b>新增 :</b>
			        <input type="button" value="新增" name="new1" id='n1'>
			    </FORM>
			 </li>
 			<li>
 				<FORM >
			       <b>更改公告 :</b>
			       <select size="1" name="newsno" >
				       <c:forEach var="newsVO" items="${newsSvc.all}" > 
				       		<option value="${newsVO.newsno}">${newsVO.newsno} : ${newsVO.title}
				       </c:forEach>   
			       </select>
			       <input type="button" value="送出" id='s1'>
			    </FORM>
			</li>
			<li>
 				<FORM >
			       <b>刪除公告 :</b>
			       <select size="1" name="deleteno" >
				       <c:forEach var="newsVO" items="${newsSvc.all}" > 
				       		<option value="${newsVO.newsno}">${newsVO.newsno} : ${newsVO.title}
				       </c:forEach>   
			       </select>
			       <input type="button" value="送出" id='d1'>
			    </FORM>
			</li>
		</ul>
		<div>
			<h1>修改公告</h1>
			<form>
				<table border='1' >
					<tr><td width='80' style='text-align:center'>編  號</td>
						<td width='580' style='text-align:left' id='ta1'>newsno</td></tr>
	
					<tr><td width='80' style='text-align:center'>主  題</td>
						<td width='580' id='ta2'><input type='text'  name='title' size='80' value='title'></td></tr> 

   					<tr><td width='80' style='text-align:center'>內  文</td>
   						<td width='580' id='ta3'><textarea rows='10' cols='73'  name='content'>content</textarea></td></tr>

   					<tr><td width='80' style='text-align:center'>時  間</td>
   						<td width='580' id='ta4'><input type='text'  name='pubdate' size='80' value='pubdate'></td></tr>

   					<tr><td colspan='2'style='text-align:center'><input type='button' value='送出'>&nbsp;&nbsp;&nbsp;
   																 <input type='button' value='刪除'></td></tr>
				</table>
			</form>
		</div>
		
		<script src="js/jquery-1.12.3.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		<script>
			$('#d1').click(function() {
				var opValue1 = $('select[name="deleteno"]').val();
				console.log(opValue1);
				
				
			});
			$('#n1').click(function() {
				
			});
			$('#s1').click(function() {
				var opValue = $('select[name="newsno"]').val();
				
				console.log(opValue);
				
				$.get('news.do',{'newsno':opValue},function(datas){
					
// 					   var ta1 = $('#ta1');
// 					   var ta2 = $('#ta2');
					   var ta3 = $('#ta3');
// 					   var ta4 = $('#ta4');
					   
// 					   var docFrag1 = $(document.createDocumentFragment());
// 					   var docFrag2 = $(document.createDocumentFragment());
					   var docFrag3 = $(document.createDocumentFragment());
// 					   var docFrag4 = $(document.createDocumentFragment());
					   
// 					   ta1.empty();
// 					   ta2.empty();
					   ta3.empty();
// 					   ta4.empty();
					   console.log(datas);
					   $.each(datas,function(nox,news){
						   console.log(news.Title);
// 						   var cell1 = $('<td></td>').text(news.Newsno);
// 						   var cell2 = $('<td></td>').text(news.Title);
						   var cell3 = $('<td></td>').text(news.Content);
// 						   var cell4 = $('<td></td>').text(news.Pubdate);
	
// 						   docFrag1.append(cell1);
// 						   docFrag2.append(cell2);
						   docFrag3.append(cell3);
// 						   docFrag4.append(cell4);
					   });
					   
// 					   ta1.append(docFrag1);
// 					   ta2.append(docFrag2);
					   ta3.append(docFrag3);
// 					   ta4.append(docFrag4);
				   })	  
				
			})
		</script>
	</body>
</html>