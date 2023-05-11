<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width: 1000px;
		margin: auto;
		text-align: center;
		margin-bottom: 700px;
		font-family: sans-serif;
		margin-top: 50px;
	}
	
	section table {
		margin-top: 50px;
		/* background: white; */
		box-shadow: 0px 3px 6px #ccc;
		border-spacing: 0px; /* 셀과 셀의 공간 */
		/* border:1px solid #F6F6F6; */
		font-size: 18px;
		padding: 10px;
	}
	
	section #list {
		margin-bottom:150px;
	}
	
	table td {
		padding:10px;
	}
	
	section a:hover {
		font-weight:bold;
	}
</style>
</head>
<body>
<section>
	<table width="600" align="center">
	<caption><h2>공지사항</h2></caption>
		<tr>
			<td align="left" style="border-bottom: 1px solid #D5D5D5;">
				<b style="font-size:20px;">${ gvo.title }</b> <p>
				<span style="color:#8C8C8C;"> ${ gvo.writeday }</span>
			</td>
		</tr>
		<tr>
			<td align="left">
				${ fn:replace(gvo.content, replaceChar, "<br/>") } 
			</td>
		</tr>
	</table>
	
	<table width="600" align="center" id="list">
		<tr>
			<td colspan="3" align="center">
				<a href="list" style="color:black;">목록</a>
				<c:if test="${userid == 'admin1234'}">
					<a href="update?id=${gvo.id}" style="color: black;">수정</a>
					<a href="delete?id=${gvo.id}" style="color: black;">삭제</a>
				</c:if>
			</td>
		</tr>
	</table>
</body>
</html>