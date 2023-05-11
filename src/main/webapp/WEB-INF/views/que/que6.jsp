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
    
    <table id="ggtable" width="600" align="center">
		<tr>
			<td><img id="ca" width="600" src="../resources/mybaemin/kkkk3.jpg"></td>
	    </tr>
		<tr>
			<td><img id="ca" width="600" src="../resources/mybaemin/kk4.jpg"></td>
		</tr>
		<tr>
			<td><img id="ca" width="600" src="../resources/mybaemin/kk5.jpg"></td>
		</tr>
    </table>
</section>
</body>
</html>