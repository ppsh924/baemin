<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

section #search {
	margin-top: 50px;
	background: white;
	/* box-shadow: 0px 3px 6px #ccc; */
	border-spacing: 0px; /* 셀과 셀의 공간 */
	/* border:1px solid #F6F6F6; */
	font-size: 18px;
	padding: 10px;
}

section #mirror {
	vertical-align: bottom;
}

section input[type=text] {
	width: 450px;
	height: 30px;
	border: none;
	outline: none;
}

section #gtable {
	margin-top: 15px;
	background: white;
	/* box-shadow: 0px 3px 6px #ccc; */
	border-spacing: 0px; /* 셀과 셀의 공간 */
	border: 15px solid #EAEAEA;
	font-size: 16px;
	/* padding: 10px; */
	border-collapse: collapse;
}

section #top10 {
	margin-top: 15px;
	background: white;
	/* box-shadow: 0px 3px 6px #ccc; */
	border-spacing: 0px; /* 셀과 셀의 공간 */
	border: 1px solid #F6F6F6;
	font-size: 18px;
	padding: 10px;
	padding-left: 10px;
	border-collapse: collapse;
}

.collapsible {
	margin: auto;
	background-color: white;
	color: black;
	cursor: pointer;
	height: 60px;
	width: 600px;
	border: 1px solid #EAEAEA;
	text-align: left;
	outline: none;
	font-size: 18px;
	/* margin-left:462px;  */
}

.content {
	width: 580px;
	margin: auto;
	font-size: 16px;
	max-height: 0;
	overflow: hidden;
	transition: max-height 0.2s ease-out;
	background-color: #EAEAEA;
	/* margin-left: 462px; */
	text-align:left;
	padding-left:10px;
	padding-right:10px;
}

.collapsible:after {
	content: '\2228';
	color: black;
	font-weight: bold;
	float: right;
}

.active:after {
	content: "\2227";
}
</style>
  <script>
        function collapse(element) {
            var before = document.getElementsByClassName("active")[0]               // 기존에 활성화된 버튼
            if (before && document.getElementsByClassName("active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
                before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
                before.classList.remove("active");                  // 버튼 비활성화
            }
            element.classList.toggle("active");         // 활성화 여부 toggle

            var content = element.nextElementSibling;
            if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
                content.style.maxHeight = null;         // 접기
            } else {
                content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
            }
        }

        
      window.onload=function() {
    	  document.getElementsByClassName("abc")[${abc}].style.background="#2ac1bc";
    	  document.getElementsByClassName("abc")[${abc}].children[0].style.color="white";
    	  document.getElementsByClassName("abc")[${abc}].style.fontWeight="900";
      }
    </script>
</head>
<body>
<section>
	<table id="search" width="600" align="center">
	<caption><h2>자주 묻는 질문</h2></caption>
		<tr height="50">
			<td colspan="2" align="left" width="500">
				<img id="mirror" width="30" src="../resources/mybaemin/k2k2.jpg"> 
				<input type="text" placeholder="검색(제목, 내용 ...)">
			</td>
			<td align="right">
				<img width="20" src="../resources/mybaemin/close.png">
			</td>
		</tr>
	</table>

    <table id="gtable" width="600" align="center" border="1" cellpadding="0" cellspacing="0">
    	<tr height="70">
      		<td class="abc"><a href="/baemin/que/que1" style="color:black;">TOP10</a></td> 
       		<td class="abc"><a href="/baemin/que/que2" style="color:black;">회원가입</a></td>
	       	<td class="abc"><a href="/baemin/que/que3" style="color:black;">바로결제</a></td>
	       	<td class="abc"><a href="/baemin/que/que4" style="color:black;">리뷰관리</a></td>
      	</tr>
      	<tr height="70">
	    	<td class="abc"><a href="/baemin/que/que5" style="color:black;">이용문의</a></td>
	       	<td class="abc"><a href="/baemin/que/que6" style="color:black;">불편문의</a></td>
	       	<td class="abc"><a href="/baemin/que/que7" style="color:black;">안전거래</a></td>
	       	<td class="abc"><a href="/baemin/que/que8" style="color:black;">기타</a></td>
      	</tr>
    </table>
    
	<div style="margin:50px;margin-bottom:200px;">
		<button type="button" class="collapsible" onclick="collapse(this);">
			<span style="color: #2ac1bc"><b>01</b></span> &nbsp; 회원 탈퇴를 하고 싶어요
		</button>
		<div class="content">
			<p>회원 탈퇴 시 배달의 민족 App 이용이 불가능하며 포인트 및 주문내역 등 모든 정보가 사라집니다.
			<p>
				탈퇴를 원하신다면, <b>[내 정보 '닉네임 클릭' > '회원탈퇴']를 통해 가능</b>합니다.
		</div>

		<button type="button" class="collapsible" onclick="collapse(this);">
			<span style="color: #2ac1bc"><b>02</b></span> &nbsp; 리뷰 수정/삭제는 어떻게
			하나요?
		</button>
		<div class="content">
			<p>
				리뷰를 작성한 회원정보로 로그인하시면 주문 후 3일 이내로 리뷰를 수정할 수 있습니다. <br> 삭제의 경우,
				기간에 상관없이 가능합니다.
			<p>
				<b>● 경로</b>:리뷰관리>작성한 리뷰의 '수정/삭제' 버튼 클릭
		</div>
		<button type="button" class="collapsible" onclick="collapse(this);">
			<span style="color: #2ac1bc"><b>03</b></span> &nbsp; 아이디/비밀번호를
			잊어버렸어요.
		</button>
		<div class="content">
			<p>
				아이디 / 비밀번호 찾기는 <b>[로그인 > 아이디 / 비밀번호 찾기]</b>에서 가능합니다.
			<p>
		</div>

		<button type="button" class="collapsible" onclick="collapse(this);">
			<b>04</b> &nbsp; 음식을 주문하려면 어떻게 해야하나요?
		</button>
		<div class="content">
			<p>App에서 주문과 동시에 결제가 진행되는 방법과 배달원에게 직접 결제하는 [만나서 결제] 방법이 있습니다.
			<p>1. 배달의 민족 App 결제방식은 아래의 방법 중 하나를 선택할 수 있습니다.
			<p>① 신용카드
			<p>② 휴대폰
			<p>③ 배민페이 : 최초 1회카드 정보 및 비밀번호를 설정하면, 이후 사용에는 비밀번호만으로 편리하게 사용 가능한 결제방식
			<p>④ 배민페이계좌이체 : 본인 인증 후 비밀번호 설정으로 손쉽게 계좌 결제를 할 수 있는 간편 결제방식
			<p>⑤ 배민페이머니 : 배민페이 계좌를 통해 충전하여 사용 가능한 결제방식
			<p>
		</div>

		<button type="button" class="collapsible" onclick="collapse(this);">
			<b>05</b> &nbsp; 리뷰가 차단되었어요.
		</button>
		<div class="content">
			<p>배달의 민족에서는 당사를 통해 제공되는 컨텐츠를 쾌적하고, 신뢰할 수 있도록 유지하기 위해 관리하고 있습니다.
			<p>따라서, 관련 법령(정보통신망 이용 촉진 및 정보 보호 등에 관한 법률, 개인정보보호법)에 의거하여 모니터링을
				진행하고 있으며 음란물 및 비속어가 기재된 리뷰를 차단하고 있습니다.
		</div>
	</div>
</section>  
</body>
</html>
