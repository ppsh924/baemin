<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		section {
			width:1000px;
			height:800px;
			margin:auto;
			text-align:center;
		}
		
		section div{
			margin-top:12px;
		}
		
		section #title { 
			margin-top:100px;
			text-align:center;
			font-size:30px;
			font-weight:500;
			font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
		
		section input[type=text]{
			width:330px;
			height:35px;
			border:none;
			border-bottom:1px solid #ccc;
			outline:none;
		}
		
		section input[type=password]{
			width:330px;
			height:35px;
			border:none;
			border-bottom:1px solid #ccc;
			outline:none;
		}
		
		section input[type=submit]{
			width:336px;
			height:39px;
			background:#2ac1bc;
			border:1px solid #2ac1bc;
			border-radius:5px;
			color:white;
			font-size:16px;
			font-weight:900;
		}
		
		section input[type=button]{
			width:336px;
			height:39px;
			background:#2ac1bc;
			border:1px solid #2ac1bc;
			border-radius:5px;
			color:white;
			font-size:16px;
			font-weight:900;
		}
		
		#msg{
			width:330px;
			margin:auto;
			text-align:center;
		}
		
		#usearch, #psearch { 
			display:none; 
			margin-top:50px;
		}
		
		section #ss {
			display:inline-block;
			width:100px;
			height:25px;
			padding-top:5px;
			margin:0px;
			font-size:14px;
			color:#8C8C8C;
			font-family:sans-serif;
			cursor:pointer;
		}
		
		section #member_input {
			font-size:14px;
			font-weight:500;
			font-family:sans-serif;
		}
		
		#view {
			margin-top:30px;
		}
	</style>
	<script>
		<c:if test="${ chk == 2 }">
			alert("회원가입이 완료되었습니다.");
		</c:if>
		
		// 아이디 찾기 폼을 보이게
		function uview(){
			document.getElementById("usearch").style.display="block";
			document.getElementById("psearch").style.display="none";
		}
		
		// 비밀번호 찾기 폼을 보이게
		function pview(){
			document.getElementById("psearch").style.display="block";
			document.getElementById("usearch").style.display="none";
		}
		
		// 아이디 찾기
		function usend(){
			var name = document.uform.name.value;
			var email = document.uform.email.value;
			var chk = new XMLHttpRequest();
			
			chk.onload=function(){
				var userid = chk.responseText.trim();
				if(userid == "1"){
					document.getElementById("view").innerText = "이름 혹은 이메일을 잘못 입력하였습니다.";
					document.getElementById("view").style.color = "red";
					document.getElementById("view").style.fontSize = "14px";
					document.getElementById("view").style.fontFamily = "sans-serif";
				}else{
					document.getElementById("view").innerText = "아이디는 "+userid+"입니다.";
					document.getElementById("view").style.color = "blue";
					document.getElementById("view").style.fontSize = "14px";
					document.getElementById("view").style.fontFamily = "sans-serif";
					document.getElementById("usearch").style.display="none";
				}
			}
			chk.open("get", "userid_search?name="+name+"&email="+email);
			chk.send();
		}
		
		// 비밀번호 찾기
		function psend(){
			var userid = document.pform.userid.value;
			var name = document.pform.name.value;
			var email = document.pform.email.value;
			
			var chk = new XMLHttpRequest();
			
			chk.onload=function(){
				var pwd = chk.responseText.trim();
				if(pwd == "1"){
					document.getElementById("view").innerText="아이디, 이름, 비밀번호를 잘못 입력하였습니다.";
					document.getElementById("view").style.color="red";
					document.getElementById("view").style.fontSize="14px";
					document.getElementById("view").style.fontFamily = "sans-serif";
				}else{
					document.getElementById("view").innerText="비밀번호는 "+pwd+"입니다.";
					document.getElementById("view").style.color="blue";
					document.getElementById("view").style.fontSize="14px";
					document.getElementById("view").style.fontFamily = "sans-serif";
					document.getElementById("psearch").style.display="none";
				}
			}
			chk.open("get","pwd_search?userid="+userid+"&name="+name+"&email="+email);
			chk.send();
		}
	</script>
</head>
<body>
	<section>
		<form method="post" action="login_ok">
			<div id="title"><a href="../main/main" style="color:black;">배달<span style="font-size:20px;">의</span>민족</a></div>
			<div><input type="text" name="userid" placeholder="아이디"></div>
			<div><input type="password" name="pwd" placeholder="비밀번호"></div>
			<div><input type="submit" value="로그인"></div> <p>
			<c:if test="${ chk == 1 }">
				<div id="msg" style="font-size:12px;color:red;">
					아이디 혹은 비밀번호를 잘못 입력하였습니다.
				</div>
			</c:if>
		</form>
		
		<!-- 아이디, 비밀번호 찾기 링크 -->
		<div align="center">
			<span id="ss" onclick="uview()">아이디 찾기&nbsp;&nbsp;&nbsp;|</span>
			<span id="ss" onclick="pview()">비밀번호 찾기</span>
		</div>
		
		<div id="member_input">
			<span>혹시, 배달의민족이 처음이신가요?</span>&nbsp;<a href="../member/member_input" style="color:#2ac1bc">회원가입</a>
		</div>
		
		<!-- 아이디 찾기 폼 -->
		<div id="usearch">
			<form name="uform">
				<input type="text" name="name" placeholder="이름"> <p>
				<input type="text" name="email" placeholder="이메일"> <p>
				<input type="button" onclick="usend()" value="아이디 찾기"> <p>
			</form>
		</div>
		
		<!-- 비밀번호 찾기 폼 -->
		<div id="psearch">
			<form name="pform">
				<input type="text" name="userid" placeholder="아이디"> <p>
				<input type="text" name="name" placeholder="이름"> <p>
				<input type="text" name="email" placeholder="이메일"> <p>
				<input type="button" onclick="psend()" value="비밀번호 찾기"> <p>
			</form>
		</div>
		
		<!-- 아이디, 비밀번호 출력 -->
		<div id="view" align="center"></div>
	</section>
</body>
</html>