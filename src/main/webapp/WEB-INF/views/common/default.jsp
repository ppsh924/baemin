<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		@font-face {
    		font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
		
		body { 
			margin:0px;
			font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
		
		a {
			text-decoration:none;
		}
		
		#baemin {
			text-decoration:none;
			color:white;
		}
		
		/* 광고성 메시지 */
		#topmsg {
			width:1000px;
			height:150px;
			background:#2ac1bc;
			margin:auto;
			color:white;
		}
		
		#topmsg #left { 
			padding-top:30px;
			padding-left:30px;
			float:left;
			width:600px;
			height:95px;
			text-align:left;
			font-size:30px;
			font-weight:500;
			/* border:1px solid red; */
		}
		
		#topmsg #right1 { 
			padding-top:25px;
			padding-left:15px;
			/* border:1px solid red; */
			float:right;
			width:150px;
			height:95px;
			font-size:25px;
		}
		
		#topmsg input[type=button] { 
			padding-top:3px;
			text-align:center;
			width:120px;
			height:40px;
			border:1px solid white;
			color:#2ac1bc;
			font-weight:800;
			background:white;
			border-radius:20px;
			font-size:16px;
			cursor:pointer;
			font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
		
		#topmsg #right2 { 
			padding-top:25px;
			padding-left:15px;
			/* border:1px solid red; */
			float:right;
			width:350px;
			height:95px;
			font-size:25px;
		}
		
		#topmsg #right2 #name {
			height:30px;
			display:inline-block;
			margin-right:10px;
			/* border:1px solid red; */
			vertical-align:bottom;
		}
		
		#topmsg #right2 #cart {
			padding-top:3px;
			text-align:center;
			width:100px;
			height:40px;
			border:1px solid white;
			color:#2ac1bc;
			font-weight:800;
			background:white;
			border-radius:20px;
			font-size:16px;
			font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
			cursor:pointer;
			/* border:1px solid red; */
		}
		
		#topmsg #right2 #logout { 
			padding-top:3px;
			text-align:center;
			width:100px;
			height:40px;
			border:1px solid white;
			color:#2ac1bc;
			font-weight:800;
			background:white;
			border-radius:20px;
			font-size:16px;
			cursor:pointer;
			font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
		
		/* 사이트 정보 */
		footer {
			width:900px;
			heigth:500px;
			margin:auto;
			padding-left:100px;
		}
	</style>	
</head>
	<decorator:head/>
<body>
	<!-- 상단 배달의 민족 로고 & 로그인 -->
	<div id="topmsg">
		<div id="left"><a id="baemin" href="../main/main">배달<span style="font-size:20px;">의</span>민족</a></div>
		
		<!-- 로그인 안 했을 때 -->
		<c:if test="${ userid == null }">
			<div id="right1">
				<input type="button" onclick="location.href='../login/login'" value="로그인">
			</div>
		</c:if>
		
		<!-- 로그인 했을 때 -->
		<c:if test="${ userid != null }">
			<div id="right2">	
				<c:if test="${ userid != 'admin1234' }">
					<span id="name"><a id="baemin" href="../member/member_mybaemin">${ name }님</a></span>
					<input type="button"  id="cart" onclick="location.href='../mybaemin/cartview'" value="장바구니">
					<input type="button" id="logout" onclick="location.href='../login/logout'" value="로그아웃">
				</c:if>
				<c:if test="${ userid == 'admin1234' }">
					<span id="name"><a id="baemin" href="../member/member_mybaemin">관리자님</a></span>
					<input type="button" id="admin" onclick="location.href='../admin/adminmain'" value="관리페이지">
					<input type="button" id="logout" onclick="location.href='../login/logout'" value="로그아웃">
				</c:if>
			</div>
		</c:if>
	</div> 
	
	<decorator:body/>
	
	<!-- 사이트 정보 -->
	<footer>
		<img src="../resources/main/footer.png" width="800">
	</footer> 
</body>
</html>