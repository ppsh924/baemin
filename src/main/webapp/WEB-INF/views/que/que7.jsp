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
     <button type="button" class="collapsible" onclick="collapse(this);">안전거래 관련 신고는 어떻게 하나요?</button>
      <div class="content">
     <p>
     우아한형제들은 이용자 피해를 최소화하고 안전하고 신뢰할 수 있는 서비스를 제공할 수 있도록 안전거래센터를 운영하고 있습니다. 법 또는 정책을 위반한 상품이나 가게 있다면 안전거래센터로 신고해주세요.
     <p>
     App 에서 곧바로 신고할 수 있습니다.<br>
     경로 : My배민 > 고객센터 > 안전거래센터 신고 > 신고하기<br>
     참고 사항 : v.11.38.0 이상에서만 신고가 가능합니다. 최신 버전으로 업데이트 후 이용해주세요.
  </div>
  <button type="button" class="collapsible" onclick="collapse(this);">[지식재산권] 지식재산권이란 무엇인가요?</button>
      <div class="content">
     <p>
    1) 지식재산이란?<br>
      지적 창작으로 생성된 결과물로, 소유 가치가 있는 무형 재산입니다.<p>
    2) 지식재산의 법적 권리<br>
     지식은 재산으로 인정 및 보호받을 수 있으며, 지식재산의 법적 권리로 상표권 저작권 디자인권 실용신안권 특허권이 있습니다.<p>
     지식재산권 관련 사이트 바로가기<br>
   - 산업재산권 제도 및 정책 확인 : <u>특허청 바로가기</u><br>
   - 출원/등록 산업재산권 조회 : <u>특허정보검색서비스 바로가기</u><br>
   - 저작권 등록안내 및 절차 확인 : <u>저작권등록시스템 바로가기</u> <br>
   - 저작권의 다양한 정보 및 상담 사례 확인 : <u>한국저작권위원회 바로가기</u><br>
     <p>
  </div>
    <button type="button" class="collapsible" onclick="collapse(this);">[지식재산권] 지식재산권 침해가 무엇인가요?</button>
      <div class="content">
     <p>
      타인(개인 또는 회사)의 지식재산인 상표, 저작물 등을 권리자의 허락을 받지 않고 사용하는 경우를 말합니다.
  </div>
   <button type="button" class="collapsible" onclick="collapse(this);">[지식재산권] 상표권이란 무엇인가요?</button>
      <div class="content">
     <p>
    <b>1) 상표권이란?</b><br>
       자신과 타인의 상품을 식별하기 위해 상호나 마크로 구분한 표장을 말하며, 특허청에 등록된 상표가 상품 또는 서비스업에 독점적으로 사용할 수 있는 권리 입니다.<p>
     <b>2) 상표</b><br>
      상품 또는 서비스업에 타인의 등록상표를 무단 사용한 경우 상표권 침해에 해당되니 사용 시 권리자에게 서면으로 허락을 받아야 합니다.<p>
     <b>유의사항</b><br>
     - 상품 또는 서비스업에 타인의 등록상표를 무단 사용한 경우 상표권 침 해에 해당되니 사용 시 권리자에게 서면으로 허락을 받아야 합니다. (타 인의 등록상표와 동일 또는 유사한 상표를 지정상품과 동일하거나 유사 한 상품에 사용하는 경우)
     - 상품검색 목적으로 관련 없는 타인의 상표를 상품명 검색 키워드 메뉴명 등에 입력하는 행위는 금지합니다.
    </div>
	</div>
</body>
</html>