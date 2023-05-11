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
     <button type="button" class="collapsible" onclick="collapse(this);">리뷰 작성은 어떻게 하나요?</button>
      <div class="content">
     <p>
      회원가입은 다음 4가지 방법으로 가능합니다.
      <br>
      1. e-mail계정으로 가입<p>
      2. 네이버 아이디로 가입<p>
      3. 페이스북 아이디로 가입<p>
      4. Apple 아이디로 가입
     </div>
      <button type="button" class="collapsible" onclick="collapse(this);">리뷰 수정/삭제는 어떻게 하나요?</button>
      <div class="content">
     <p>
     주문 내역에서 리뷰를 작성하고자 하는 주문 건 하단의 <b>[리뷰 쓰기]</b> 버튼을 클 릭하면 리뷰를 작성할 수 있습니다.<br>
     작성한 리뷰는 <b>[리뷰관리]</b> 메뉴에서 확인할 수 있습니다.<p>
     <b>• 리뷰 작성 조건</b><br>
     1. 리뷰 작성은 배달의민족 회원에게 한하여 가능하며, 비회원은 작성이 불가 합니다.<br>
     2. 배달완료 후 3일 이내에 작성이 가능하며, 주문번호 기준으로 1개의 리뷰 작성이 가능합니다.<br>
     3. 주문이 취소된 경우 리뷰 작성이 불가합니다.<br>
     4. 전화주문 이용 시에는 리뷰 작성이 불가합니다.
     </div>
     <button type="button" class="collapsible" onclick="collapse(this);">리뷰 수정/삭제는 어떻게 하나요?</button>
      <div class="content">
     <p>
      리뷰를 작성한 회원정보로 로그인하시면 주문 후 3일 이내로 리뷰를 수정할 수 있습니다<br>
      삭제의 경우, 기간에 상관없이 가능합니다. <p>
      <b>• 경로</b>: 리뷰관리>작성한 리뷰의 '수정/삭제' 버튼 클릭
     </div>
      <button type="button" class="collapsible" onclick="collapse(this);">리뷰 내용을 사장님만 볼 수 있게 할 수 있나요?</button>
     <div class="content">
     <p>
      <b>[리뷰 쓰기]</b>화면 하단에 <b>'사장님에게만 보이게'</b>를 선택 후 등록하면 사장님만 볼 수 있게 됩니다.
     </div>
       <button type="button" class="collapsible" onclick="collapse(this);">리뷰가 차단되었어요.</button>
      <div class="content">
     <p>
      배달의민족에서는 당사를 통해 제공되는 컨텐츠를 쾌적하고, 신뢰할 수 있도록 유지하기 위해 관리하고 있습니다.<p>
      따라서, 관련 법령(정보통신망 이용 촉진 및 정보 보호 등에 관한 법률, 개인정 보보호법)에 의거하여 모니터링을 진행하고 있으며 음란물 및 비속어가 기재 된 리뷰를 차단하고 있습니다.
     </div>
      <button type="button" class="collapsible" onclick="collapse(this);">권리침해신고가 되었다는 메일을 받았어요. 이게 뭔가요?</button>
     <div class="content">
     <p>
      공개된 리뷰로 인해 명예훼손, 사생활 침해, 저작권 침해 등으로 누군가의 권 리를 침해한다는 주장을 받게 될 경우 권리침해신고가 접수되어 메일로 안내 드립니다.<p>
      작성한 게시물의 복원이 필요한 경우에는 보내드린 메일을 참고하여, 차단 일 로부터 30일 이내에 복원 신청을 접수할 수 있습니다.
     </div>
	</div>
</body>
</html>