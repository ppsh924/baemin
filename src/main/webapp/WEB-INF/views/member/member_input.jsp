<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width:1000px;
		height:700px;
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
		
	section #zip{
		width:200px;
		height:35px;
	}
		
	section #zipbtn{
		width:130px;
		height:39px;
		vertical-align:bottom;
		background:#2ac1bc;
		border:1px solid #2ac1bc;
		border-radius:5px;
		color:white;
		font-size:16px;
		font-weight:900;
	}
		
	section #subbtn{
		width:336px;
		height:39px;
		background:#2ac1bc;
		border:1px solid #2ac1bc;
		border-radius:5px;
		color:white;
		font-size:16px;
		font-weight:900;
	}
</style>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 아이디 중복 체크
		var uchk = 0; // userid의 중복 여부에 따라 값이 변화
		function userid_check(userid){ // 매개변수: userid
			if(userid.length < 6){
				alert("아이디의 길이는 6자 이상입니다.");
			}else{
				var chk = new XMLHttpRequest();
				chk.onload = function(){
					// alert(chk.responseText.trim());
					if(chk.responseText == "0"){
						document.getElementById("umsg").innerText="사용 가능한 아이디입니다.";
						document.getElementById("umsg").style.color="blue";
						document.getElementById("umsg").style.fontSize="12px";
						document.getElementById("umsg").style.fontFamily="sans-serif";
						uchk = 1; // 아이디 중복 체크했으면 1
					}else{
						document.getElementById("umsg").innerText="사용 불가한 아이디입니다.";
						document.getElementById("umsg").style.color="red";
						document.getElementById("umsg").style.fontSize="12px";
						document.getElementById("umsg").style.fontFamily="sans-serif";
						uchk = 0; // 아이디 중복 체크 안 했으면 0
					}
				}
				chk.open("get", "userid_check?userid="+userid); // 매개변수로 받은 userid 전달
				chk.send();
			}
		}
		
		// 비밀번호 일치 여부 체크
		var pchk = 0;
		function pwd_check(){
			var pwd = document.mem.pwd.value;
			var pwd2 = document.mem.pwd2.value;
			
			if(pwd.length != 0){
				if(pwd == pwd2){
					document.getElementById("pmsg").innerText="비밀번호가 일치합니다.";
					document.getElementById("pmsg").style.color="blue";
					document.getElementById("pmsg").style.fontSize="12px";
					document.getElementById("pmsg").style.fontFamily="sans-serif";
					pchk = 1; // 비밀번호 일치 체크했으면 1
				}else{
					document.getElementById("pmsg").innerText="비밀번호가 일치하지 않습니다.";
					document.getElementById("pmsg").style.color="red";
					document.getElementById("pmsg").style.fontSize="12px";
					document.getElementById("pmsg").style.fontFamily="sans-serif";
					pchk = 0; // 비밀번호 일치 체크 안 했으면 0
				}
			}
		}
		
		// 우편번호 버튼 클릭 시 호출 함수명
		function juso_search(){
			new daum.Postcode({
				oncomplete: function(data) {
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		            	addr = data.roadAddress;
		          	} else { // 사용자가 지번 주소를 선택했을 경우(J)
		            	addr = data.jibunAddress;
		        	}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
			       	document.mem.zip.value = data.zonecode; // 우편번호
			       	document.mem.juso.value = addr;  // 주소
			       	// 커서를 상세주소 필드로 이동한다.
			        document.mem.juso_etc.focus();
				}
			}).open();
		}
		
		// 유효성 체크
		function form_check(){
			if(uchk == 0){
				alert("아이디 중복 체크하세요.");
				return false;
			}else if(pchk = 0){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}else{
				return true;
			}
		}
	</script>
</head>
<body>
	<section>
		<form name="mem" method="post" action="member_input_ok" onsubmit="return form_check()">
			<div id="title"><a href="../main/main" style="color:black;">배달<span style="font-size:20px;">의</span>민족</a></div>
			<div>
				<input type="text" name="userid" placeholder="아이디" onblur="userid_check(this.value)"> <br>
				<span id="umsg"></span> <p>
			</div>
			<div><input type="text" name="name" placeholder="이름"></div>
			<div><input type="password" name="pwd" placeholder="비밀번호" onkeyup="pwd_check()"></div>
			<div>
				<input type="password" name="pwd2" placeholder="비밀번호 확인" onkeyup="pwd_check()"> <br>
				<span id="pmsg"></span> <p>
			</div>
			<div>
				<input type="text" name="zip" placeholder="우편번호" id="zip" readonly>
				<input type="button" value="주소검색" onclick="juso_search()" id="zipbtn">
			</div>
			<div><input type="text" name="juso" placeholder="주소" readonly></div>
			<div><input type="text" name="juso_etc" placeholder="상세주소"></div>
			<div><input type="text" name="phone" placeholder="휴대폰"></div>
			<div><input type="text" name="email" placeholder="이메일"></div>
			<div><input type="submit" value="회원가입하기" id="subbtn"></div>
		</form>
	</section>
</body>
</html>