<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<%@ include file="admintop.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@font-face {
	font-family: 'BMDOHYEON';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

section {
	width: 1000px;
	margin: auto;
	/* font-family:sans-serif; */
}

section table {
	margin-top: 50px;
	border-spacing: 20px;
	font-family: sans-serif;
	cursor: pointer;
}

section #table td {
	width: 200px;
	height: 300px;
	vertical-align: top;
	border: 1px solid white;
	padding: 3px;
}

section #table td div {
	width: 200px;
}

section #table td:hover {
	box-shadow: 0px 3px 6px #ccc;
}

/* section table #left {
			border-top:1px solid black;
			border-bottom:1px solid black;
			border-left:1px solid black;
			border-right:none;
		} 
		
		section table #right {
			border-top:1px solid black;
			border-bottom:1px solid black;
			border-left:none;
			border-right:1px solid black;
		} */
section a {
	color: black;
}

section #tab {
	/* border:1px solid red; */
	padding-left: 7px;
	width: 993px;
	height: 300px;
	position: relative;
	display: inline-block;
}

section #subtab {
	padding-left: 2px;
	position: absolute;
	background: white;
}

section #tab #subtab li {
	list-style-type: none;
	background: white;
	border: none;
	float: left;
	margin-left: 20px;
	margin-top: 20px;
	padding-top: 15px;
	width: 140px;
	height: 35px;
	box-shadow: 0px 3px 6px #ccc;
	text-align: center;
	font-size: 16px;
	color: black;
	text-decoration: none;
	font-family: 'BMDOHYEON';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

section #tab #subtab li:hover {
	background: #EAEAEA;
}
</style>
<script>
	
</script>
</head>
<body>
	<section>
	
	<span id="tab">
		<ul id="subtab">
				<li><a href="../admin/menuallSearch" id="search" onclick="viewform()">검색</a></li>
			<li><a href="../admin/menuall">전체보기</a></li>
			<li><a href="../admin/menuone">1인분</a></li>
			<li><a href="../admin/alist?fcode=f01">한식</a></li>
			<li><a href="../admin/alist?fcode=f02">분식</a></li>
			<li><a href="../admin/alist?fcode=f03">카페ㆍ디저트</a></li>
			<li><a href="../admin/alist?fcode=f04">돈까스ㆍ회ㆍ일식</a></li>
			<li><a href="../admin/alist?fcode=f05">치킨</a></li>
			<li><a href="../admin/alist?fcode=f06">피자</a></li>
			<li><a href="../admin/alist?fcode=f07">아시안ㆍ양식</a></li>
			<li><a href="../admin/alist?fcode=f08">중국집</a></li>
			<li><a href="../admin/alist?fcode=f09">족발ㆍ보쌈</a></li>
			<li><a href="../admin/alist?fcode=f10">야식</a></li>
			<li><a href="../admin/alist?fcode=f11">찜ㆍ탕</a></li>
			<li><a href="../admin/alist?fcode=f12">도시락</a></li>
			<li><a href="../admin/alist?fcode=f13">패스트푸드</a></li>
			<li><a href="../admin/franchise">프랜차이즈</a></li>
			<li><a href="../admin/goodtaste">맛집랭킹</a></li>
		</ul>
	</span>
	<table id="table" align="center" width="990">
		<tr style="margin:10px;">
		<c:forEach items="${ alist }" var="avo" varStatus="sts">
			<td width="180" onclick="location='acontent?fcode=${ avo.fcode }'">
				<div align="center" style="height:140px;"><img src="../resources/food/${ avo.fimg }" width="215" height="140"></div>
				<div><b>${ avo.shop }</b></div>
			</td>
			<c:if test="${ sts.count%4 == 0 }">
				</tr>
				<tr>
			</c:if>
		</c:forEach>	
		</tr>
	</table>
	
	</section>
</body>
</html>