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
    	  document.getElementsByClassName("abc")[${abc}].childNodes[0].style.color="white";
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
     <button type="button" class="collapsible" onclick="collapse(this);">아이디/비밀번호를 잊어버렸어요.</button>
      <div class="content">
     <p>
       아이디/비밀번호 찾기는 <b>[로그인>아이디/비밀번호 찾기]</b> 에서 가능합니다.
     </div>
      <button type="button" class="collapsible" onclick="collapse(this);">내 주문내역을 삭제할 수 있나요?</button>
      <div class="content">
     <p>
      App 내 [주문내역>주문상세]를 통해 삭제 가능합니다.
     </div>
     <button type="button" class="collapsible" onclick="collapse(this);">주류 구매 시 연령인증은 꼭 해야 하나요?</button>
      <div class="content">
     <p>
      청소년 보호법에 따라 19세 미만에게는 주류 판매가 금지되고 있어, 주류 구 매 시에는 연령인증이 필요합니다.<p>
    연령 인증은 1년에 1회 갱신되며 번거로우시더라도 건전한 음주문화를 위해 연령 인증 후 구매 부탁드립니다.
     </div>
      <button type="button" class="collapsible" onclick="collapse(this);">위치 설정을 변경하고 싶어요 어떻게 하나요?</button>
     <div class="content">
     <p>
      주소는 <b>[App  메인 상단의 주소 클릭 > 주소설정 > 상세 주소 입력 > 완료]</b>를 통해 설정/변경이 가능합니다.
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">안심번호가 뭔가요?</button>
      <div class="content">
     <p>
      안심번호는 주문자의 개인 정보 보호를 위해 실제 연락처가 노출되지 않도록 050으로 시작하는 임시 가상번호가 발급되는 서비스입니다.<p>
     배달의민족을 더욱 믿고 이용할 수 있도록 안심번호 서비스를 제공하고 있으며, 안심번호는 일정 시간이 지난 후 자동 해지됩니다.
     </div>
      <button type="button" class="collapsible" onclick="collapse(this);">회원 등급 산정은 어떻게 되나요?</button>
     <div class="content">
     <p>
      [회원등급은 전월 결제/주문 횟수에 따라 결정되며, 매월 첫 영업일 오전에 반영됩니다.<br>
          주문 횟수는 매월 1일부터 말일까지 <b>[배달의민족, 배민1(번쩍배달), B마트, 포장/방문]</b>의 누적 배달 완료 횟수를 기준으로 하며 전화 주문, 취소 주문 건 및 배민문방구에서 주문한 건은 주문 횟수에 포함되지 않습니다.<p>
    <b>가족계정을 이용한 주문은 음식을 주문한 가족 구성원의 등급 계산에 포함 됩니다.</b>
     </div>
	</div>

</body>
</html>