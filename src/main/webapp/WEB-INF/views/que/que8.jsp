<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     <button type="button" class="collapsible" onclick="collapse(this);">비장의카드(VIP카드)는 무엇인가요?</button>
      <div class="content">
     <p>
     '비장의카드'는 우리 체크카드로 일반회원 전용과 VIP회원 전용으로 구분되어 발급 가능합니다.<br>
     일반 회원용 비장의카드(화이트컬러)는 고마운분 등급만 신청할 수 있으며, VIP회원용 비장의카드(블랙컬러)는 귀한분, 더귀한분, 천생연분 등급만 신청할 수 있습니다.<p>
     일반회원용과 VIP회원용의 기본 할인 혜택은 동일합니다.<p>
  </div>
   <button type="button" class="collapsible" onclick="collapse(this);">배달의민족 글꼴은 마음대로 사용해도 되나요?</button>
      <div class="content">
       우아한형제들에서는 글꼴(폰트)을 만들어 모두가 제약 없이 쓸 수 있도록 무료 로 배포하고 있습니다.<p>
     다만, 글꼴 자체를 유료로 판매하는 것은 금지하고 있으며 글꼴 사용 시에는 라이선스 내용에 동의하고, 전문을 포함하거나 출처 표기가 필요합니다.<p>
   (출처 표기 예시 : 000에는 (주)우아한형제들에서 제공한 배달의 민족 00체가 적용되어 있습니다.)<p>
    <b>• 다운로드 URL</b> : <u>https://www.woowahan.com/#/fonts</u><p>
        ※라이선스 전문은 다운로드 페이지에서 확인 가능합니다.<p>
  </div>
   <button type="button" class="collapsible" onclick="collapse(this);">배민현태카드로 결제한 포인트는 언제 적립되나요?</button>
      <div class="content">
     <p>
     배민현대카드 결제 후 적립되는 배민포인트는 당월 카드 이용금액 결제일로부터 2일~최대 10일 이후 적립됩니다.
     <p>
  </div>
   <button type="button" class="collapsible" onclick="collapse(this);">음식에서 이물질이 나왔는데 고객안심센터로 연락하면 되나요?</button>
      <div class="content">
     <p>
     네, 맞습니다. 고객안심센터는 배달의 민족을 이용하여 발생된 가게와 관련된 불편사항을 접수하여 문제를 해결해드립니다.<p>
     또한, 고객안심센터 및 배달의민족 고객센터로 <b>직접 접수된 이물 신고 중 개인정보(이름,연락처 등) 제공에 동의하실 경우 식품의약품안전처로 전달</b>됩니다.<p>
     이물 통보 접수 후 조사결과는 최대 15일 이내 관할 지자체에서 고객님께 직접 회신해 드립니다.
     <p>
  </div>
	</div>
</body>
</html>