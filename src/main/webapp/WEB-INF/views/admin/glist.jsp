<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="admintop.jsp" %>  


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
		font-family: sans-serif;
		margin-top: 50px;
	}
	
	section table {
		margin-top: 50px;
		/* background: white; */
		/* box-shadow: 0px 3px 6px #ccc; */
		border-spacing: 0px; /* 셀과 셀의 공간 */
		/* border:1px solid #F6F6F6; */
		font-size: 18px;
		padding: 10px;
	}
	
	a {
		text-decoration: none;
		color: white;
	}
	
	section #next {
		cursor:pointer;
	}
	
	table tr:hover {
		box-shadow: 0px 3px 6px #ccc;
	}
	
	#gongji td {
		padding-left:15px;
	}
</style>

</head>
<body>
<section>
	<table width="600" align="center" id="gongji">
		<caption><h2>공지사항</h2></caption>	
		<c:forEach items="${ list }" var="gvo">
		<tr height="100">
			<td colspan="2" align="left">
				<a href="../admin/gcontent?id=${ gvo.id }">
					<b style="color:black;font-size:20px;">${ gvo.title }</b>
				</a> <br> 
				<span style="color:#8C8C8C;">${ gvo.writeday }</span>
			</td>
			<td align="right">
				<img id="next" src="../resources/mybaemin/next.png" onclick="location='../admin/gcontent?id=${ gvo.id }'" width="50">
			</td>
		</tr>
		</c:forEach>
	</table>
	
	<table width="600" align="center">
		<c:if test="${userid == 'admin1234'}">
		<tr height="50">
			<td colspan="10" align="center">
				<span id="dd"><a href="/baemin/admin/write" style="color:black;"><b>글쓰기</b></a></span>
			</td>
		</tr>
		</c:if>
	</table>
</section>
</body>
</html>


