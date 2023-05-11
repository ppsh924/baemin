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
        <button type="button" class="collapsible" onclick="collapse(this);">음식을 주문하려면 어떻게 해야 하나요?</button>
     <div class="content">
     <p>
     App에서 주문과 동시에 결제가 진행되는 방법과 배달원에게 직접 결제하는 [만나서결제] 방법이 있습니다.<p>
     1. 배달의민족 App 결제 방식은 아래의 방법 중 하나를 선택할 수 있습니다. <p>
     ① 신용카드<p>
     ② 휴대폰<p>
     ③ 배민페이 : 최초 1회 카드 정보 및 비밀번호를 설정하면, 이후 사용에는 비밀번호만으로 편리하게 사용 가능한 결제방식<p>
     ④ 배민페이계좌이체 : 본인 인증 후 비밀번호 설정으로 손쉽게 계좌 결제를 할 수 있는 간편 결제방식<p>
     ⑤ 배민페이머니 : 배민페이 계좌를 통해 충전하여 사용 가능한 결제방식<p>
     • 카카오페이, PAYCO, 네이버페이, 토스 : 별도 해당 서비스 가입 후 결제 하는 방식<p>
     2. [만나서결제]는 음식 수령 후 배달기사에게 '카드 또는 현금'으로 직접 결제 하는 방식입니다.<p>
    (배민1(one)의 경우 만나서결제 이용이 불가하며, 이외 배달가게도 설정에 따 라 만나서결제 이용이 제한될 수 있습니다.)
     </div>
        <button type="button" class="collapsible" onclick="collapse(this);">주문한 적 없는데 주문 관련 알림이 계속 와서 불편해요. 어떻게 해야 하나요?</button>
     <div class="content">
     <p>
      배달의 민족 고객센터를 통해 휴대전화번호 초기화가 필요합니다.<br>
      번거로우시겠지만, 고객센터로 문의주시면 빠르게 도움드리겠습니다.
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">주문 후 메뉴 혹은 수량을 변경 하고싶어요.</button>
     <div class="content">
     <p>
      주문 접수가 완료되었다는 알림 톡을 받으셨다면, 결제한 내용에 대한 변경이 어렵습니다.<p>
      아직 알림 톡이 오지 않았다면, 주문하신 가게 또는 고객센터로 연락 주시기 바랍니다.
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">주문한 내역은 어디서 확인할 수 있나요?</button>
     <div class="content">
     <p>
      결제가 완료 된 주문내역은 <b>[주문내역]</b> 메뉴에서 확인 가능합니다.
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">쿠폰 사용은 어떻게 하나요?</button>
     <div class="content">
     <p>
      쿠폰은 배달의민족 앱에서 주문 및 결제 시에 사용이 가능하며, 주문 건당 1개 의 쿠폰을 사용할 수 있습니다.<br>
      단, 결제방식이 만나서결제일 경우는 이용이 불가합니다.<p>
      • 쿠폰 사용방법 : <b>[장바구니 > 배달 주문하기 > 할인쿠폰]</b> 에서 사용할 쿠폰 을 선택 또는 쿠폰코드를 직접 입력
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">첫 주문 쿠폰이 사용이 안 돼요.</button>
     <div class="content">
     <p>
      첫 주문 쿠폰은 배달의민족 앱에서 주문한 경험이 없는 고객일 경우 사용할 수 있습니다.<p>
      이전에 배달의 민족에 가입하여 주문했던 이력이 있는 경우 사용이 제한됩니다.
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">간편결제(계좌이체)로 결제하면 현금영수증을 발급할 수 있나요?</button>
     <div class="content">
     <p>
      배민페이(계좌이체)', '카카오페이(계좌이체), '네이버페이(계좌이체)', '토스 (계좌이체) 로 결제 시,<p>
     결제가 완료된 주문 건에 대하여 발급되며, 영업일 기준 최대 1일 정도 소요됩니다.<p>
     <b>• 경로 : 주문내역 > 간편결제(계좌이체) 주문 선택 > "현금 영수증 보기" 클릭</b><p>

      결제 단계에서 현금영수증 발급 신청을 안하셨다면,<p>
      위 경로에서 발급번호 확인한 후 국세청 홈페이지에서 자진 발급분을 등록해주세요.
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">L.POINT (롯데포인트)도 사용할 수 있나요?</button>
     <div class="content">
     <p>
      보유하신 L.POINT로 배달의민족 앱에서 직접 결제할 경우 할인을 받을 수 있습니다.<b>(2021.12.31 종료)</b><p>
      L.POINT는 100P 이상일 경우 1P 단위로 사용할 수 있습니다.
     </div>
        <button type="button" class="collapsible" onclick="collapse(this);">PC에서 배달의민족 주문을 할 수 있나요?</button>
     <div class="content">
     <p>
      PC를 통한 주문 및 결제는 불가하며, 배달의 민족 App을 통해서 가능합니다.
     </div>
     </div>
</body>
</html>