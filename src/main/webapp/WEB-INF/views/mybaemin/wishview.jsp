<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width: 1000px;
		height: 600px;
		margin: auto;
		font-family: sans-serif;
	}
	
	section table {
		margin-top: 100px;
		border-spacing: 0px;
		cursor:pointer;
	}
	
	section b {
		font-size:20px;
	}

	section table td {
		height: 80px;
		font-size: 16px;
		border-bottom: 1px solid #ccc;
	}
	
	section table tr:first-child td {
		border-top: 2px solid #ccc;
	}
	
	section table tr:last-child td {
		border-bottom: 2px solid #ccc;
	}
	
	section #jiimimg {
		display:block;
		margin:auto;
		margin-top:100px;
		/* border:1px solid black; */
	}
	
	section #jjim {
		width:400px;
		margin:auto;
		text-align:center;
		color:#4C4C4C;
		font-size:24px;
		/* border:1px solid black; */
	}
	
	section #button1 {
		display:inline-block;
		font-size:14px;
		padding-top:2px;
		padding-bottom:2px;
		padding-left:10px;
		width:88px;
		height:22px;
		background:#F6F6F6;
		border-radius:15px;
		border:none;
	}
	
	section input[type=button] {
		width:60px;
		font-size:12px;
		color:#5D5D5D;
		background:#F6F6F6;
		border:none;
	}
</style>
</head>
<body>
	<section>
		<c:if test="${ wlist.size() == 0 }">
			<img id="jiimimg" src="../resources/img/jjim.png" width="500" height="500">
			<div id="jjim">자주 찾는 가게를 찜 해보세요</div>
		</c:if>
		<c:if test="${ wlist.size() != 0 }">
		<table width="600" align="center">
			<caption><h2>찜</h2></caption>
			<c:forEach items="${ wlist }" var="wvo">
				<tr>
					<td width="300" onclick="location='../food/fcontent?fcode=${ wvo.fcode }'">
						<img src="../resources/food/${ wvo.fimg }" width="200" height="150" style="padding-left:50px;">
					</td>
					<td onclick="location='../food/fcontent?fcode=${ wvo.fcode }'">
						<b>${ wvo.shop }</b> <br>
						<img src="../resources/img/star2.png" width="20" valign="bottom"> ${ wvo.star }.0 <br>
						최소주문 <fmt:formatNumber value="${ wvo.minorder }" pattern="#,###" type="number" />원, 
						배달팁 <fmt:formatNumber value="${ wvo.baeprice }" pattern="#,###" type="number" />원 <br>
						<span id="button1"><img src="../resources/img/clock.png" width="16" valign="bottom"> ${ wvo.baetime }분</span>
						<input type="button" id="button2" value="포장가능">
					</td>
				</tr>
			</c:forEach>
		</table>
		</c:if>
	</section>
</body>
</html>