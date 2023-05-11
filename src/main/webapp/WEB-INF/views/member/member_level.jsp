<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<title>Insert title here</title>
<style>
	section {
		width:1000px;
		height:1000px;
		margin:auto;
		font-family:sans-serif;
	}
	
	section table{
		margin-top:12px;
	}
	
	#gray {
		width:400px;
		margin:auto;
		margin-top:30px;
		padding-top:15px;
		text-align:center;
		border:1px solid #F6F6F6;
		background:#F6F6F6;
	}
	
	#bmart {
		width:400px;
		margin:auto;
		margin-top:30px;
		text-align:center;
		color:#8C8C8C;
		font-size:15px;
	}
</style>
<script>
	// window.open => window는 생략 가능
	// open("새창에 띄울 문서명", "타겟명", "띄울 창의 크기"): 새로운 창에 문서를 띄우는 명령어
	// 새창에서 넘어가는 문서가 없을 경우 타겟명을 ""으로 두어도 된다.
	function winopen() {
		a = open("../excludes/baemin_vip", "", "width=500,height=1000");
	}
		
	window.onload=function() {
		date = new Date();
		month = date.getMonth() + 1;
		document.getElementById("currentdate").innerHTML = month + "월"; 
		   
		var cnt=document.getElementById("cnt").value;
		if(cnt<5) {	
			document.getElementById("thanks").innerText="고마운 분";
			document.getElementById("thanks").style.color="#2ac1bc";
			document.getElementById("names").style.color="#2ac1bc";
			document.getElementById("image").src="../resources/mybaemin/general.png";
		}else if(cnt<9) {
			document.getElementById("thanks").innerText="귀한분";
			document.getElementById("thanks").style.color="#B77300";
			document.getElementById("names").style.color="#B77300";
			document.getElementById("image").src="../resources/mybaemin/dong.JPG";
		}else if(cnt<20) {
			document.getElementById("thanks").innerText="더귀한분";
			document.getElementById("thanks").style.color="#BDBDBD";
			document.getElementById("names").style.color="#BDBDBD";
			document.getElementById("image").src="../resources/mybaemin/silver.JPG";
		}else if(cnt>=20) {
			document.getElementById("thanks").innerText="천생연분";
			document.getElementById("thanks").style.color="#E0B94F";
			document.getElementById("names").style.color="#E0B94F";
			document.getElementById("image").src="../resources/mybaemin/gold.JPG";
		}	
	}
</script>
</head>
<body>
	<section>
	<table width="500" align="center">
		<input type="hidden" class="cnt" id="cnt" value="${cnt}">
		<caption><h2>등급별 혜택 안내</h2></caption>
		<tr height="50">
			<td colspan="2" align="right">
				<b style="text-decoration: underline; cursor: pointer;" onclick="winopen()">배민 VIP란?</b>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><img width="395" height="373" id="image" src="../resources/mybaemin/general.png">
			</td>
		</tr>
		<tr height="100">
			<td colspan="2" align="center">
				<p> <b><span id="names">${ name }</span>님은 <p>
				이번 달 <span id="thanks">고마운분</span>입니다</b>
			</td>
		</tr>
	</table>

	<div id="gray">
		<c:if test="${cnt<5}">
			<b><span style="color: #2ac1bc;">${5-cnt}번 </span></b> 더 주문하면 <p>
				다음 달 배민 VIP가 됩니다 <p>
				<span style="font-size: 15px; color: #747474;">
				<span id="currentdate"></span> 누적 주문: ${cnt}회</span>
		</c:if>
		<c:if test="${cnt>=5}">
			 축하드려요! <p>다음 달 배민 VIP가 됩니다 <p>
			<span style="font-size: 15px; color: #747474;">
			<span id="currentdate"></span> 누적 주문: ${cnt}회</span>
		</c:if>
	</div>

	<div id="bmart">B마트 주문은 월말에 합산되어 등급에 반영됩니다.</div>
	</section>
</body>
</html>