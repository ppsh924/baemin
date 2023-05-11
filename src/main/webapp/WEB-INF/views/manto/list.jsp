    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>  
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

section #empty {
	margin-top: 50px;
	margin-bottom: 200px;
}

section #mun_history {
	margin-top: 50px;
	margin-bottom: 200px;
	/* background: white; */
	box-shadow: 0px 3px 6px #ccc;
	border-spacing: 0px; /* 셀과 셀의 공간 */
	/* border:1px solid #F6F6F6; */
	font-size: 18px;
	padding: 10px;
}

#gfirst {
	width: 920px;
	height: 28px;
	background: white;
	color: black;
	margin: auto;
	padding-top: 30px;
	font-family: sans-serif;
	padding-bottom: 60px;
}

#gfirst #gleft {
	width: 80px;
	height: 28px;
	float: left;
	text-align: left;
	margin-left: -30px;
}

#gfirst #gmiddle {
	width: 810px;
	height: 28px;
	float: middle;
	text-align: center;
	font-size: 30px;
}

#gfirst #gright {
	width: 500px;
	height: 28px;
	float: right;
	text-align: right;
	margin-top: -23px;
	margin-right: -40px;
	margin-bottom: 100px;
}

#ca {
	display: inline-block;
	/* width: 300px; */
	height: 25px;
	border: 1px solid #D5D5D5;
	background: #D5D5D5;
	color: white;
	text-align: center;
	font-size: 16px;
	padding-top: 5px;
}

input[type=checkbox] {
	visibility: hidden;
}

section input[type=text] {
	width: 330px;
	height: 35px;
	border: 1px solid #ccc;
	outline: none;
}

select {
	width: 335px;
	height: 35px;
	border: 1px solid #ccc;
}

section textarea {
	width: 330px;
	height: 300px;
	border: 1px solid #ccc;
	outline: none;
	resize: none;
}

section input[type=submit] {
	width: 336px;
	height: 39px;
	background: #2ac1bc;
	border: 1px solid #2ac1bc;
	color: white;
	font-size: 16px;
	font-weight: 900;
	margin-top: 20px;
}

#munmunm {
	margin-top: 100px;
}

#rt {
	font-size: 13px;
}

#gsecond {
	width: 500px;
	height: 20px;
	color: #BDBDBD;
	margin: auto;
	font-size: 20px;
	padding-bottom: 10px;
	font-family: sans-serif;
}

#quer {
	width: 500px;
	float: right;
	font-size: 14px;
	color: gray;
}

#pp {
	border-top: 2px solid #D3D3D3;
	border-bottom: 1px solid #D3D3D3;
	height: 50px;
}

#pp2 {
	border-bottom: 0px solid #D3D3D3;
	height: 50px;
}

#pp3 {
	border-top: 1px solid #D3D3D3;
	border-bottom: 1px solid #D3D3D3;
	height: 50px;
}

#pp4 {
	border-bottom: 2px solid #D3D3D3;
	height: 200px;
}

#second {
	font-size: 12px;
	color: gray;
}

#munimg {
	margin-top: 100px;
}
</style>

 <script src="http://code.jquery.com/jquery-latest.js"></script>
 <script>
		$(function() {
			$("#gright").click(function() {
				$("#gright").css("color", "black"); //속성을 변경할 수 있게 해주는 toggleClass  	   

			});
			$("#gright").click(function() {
				$("#gright").css("color", "#BDBDBD");

			});
		});
		function check2(my) {
			if (document.pkc.che.checked) {
				document.pkc.che.checked = false;
				my.style.background = "#D5D5D5";
			} else {
				document.pkc.che.checked = true;
				my.style.background = "#2ac1bc";
			}
		}

		function len_check(my) {
			document.getElementById("len").innerText = my.length;
		}

		/*  function check()
		 {
		 	var chek=document.pkc.chek.checked;
		 	alert(chek);
		 }  */
		function form_check() {
			var que = document.pkc.que.value;
			var che = document.pkc.che.checked;
			if (que == 8) {
				alert("문의 정보를 선택해주세요")
				return false;
			} else if (che == false) {
				alert("문의를 보내려면 약관에 동의하셔야합니다")
				return false;
			} else {

				return true;

			}
		}

		function mun() {
			location = "/baemin/manto/write";
		}

		function mun2() {
			location = "/baemin/manto/list";
		}
	</script>
</head>
<body onload="init()">
<section>
	<table width="600" align="center">
	<caption><h2>이메일 문의</h2></caption>
		<tr height="70">
	   		<td align="center" width="300">
				<span id="gleft" onclick="mun()" style="cursor:pointer;color:#BDBDBD;font-size:20px">이메일 문의하기</span>
			</td>
			<td align="center" width="300">
				<span id="gright" onclick="mun2()" style="cursor:pointer;color:black;text-decoration: underline;text-underline-position:under;font-size:20px">나의 문의 내역</span>
			</td>	
	    </tr>
     </table>

    <c:if test="${ tmap.size() == 0 }">
    <table id="empty" width="600" align="center">
    	<tr>
    		<td colspan="2" align="center">
    			<img src="../resources/img/mun.png">
    		</td>
    	</tr>
    	<tr>	
    		<td colspan="2" align="center">
    			<div style="color:#747474;font-size:22px;"> 문의 내역이 없어요 </div>
    		</td>
    	</tr>
    </table>
    </c:if>
    <c:if test="${ tmap.size() != 0 }">
	<form name="pkc" method="post" action="write_ok" enctype="multipart/form-data" onsubmit="return form_check()">
	<c:forEach items="${tmap}" var="map">
	<table id="mun_history" width="600" align="center">		
				<c:choose>
					<c:when test="${map.que==0}">
						<c:set var="que2" value="B마트문의" />
					</c:when>
					<c:when test="${map.que==1}">
						<c:set var="que2" value="오류문의" />
					</c:when>
					<c:when test="${map.que==2}">
						<c:set var="que2" value="회원정보" />
					</c:when>
					<c:when test="${map.que==3}">
						<c:set var="que2" value="리뷰문의" />
					</c:when>
					<c:when test="${map.que==4}">
						<c:set var="que2" value="제휴문의" />
					</c:when>
					<c:when test="${map.que==5}">
						<c:set var="que2" value="업소정보문의" />
					</c:when>
					<c:when test="${map.que==6}">
						<c:set var="que2" value="이벤트문의" />
					</c:when>
					<c:when test="${map.que==7}">
						<c:set var="que2" value="기타" />
					</c:when>
				</c:choose>

		<tr height="50">
			<td align="left"><b>${map.title}</b></td>
		</tr>
		<p>
		<tr>
			<td height="50" align="left">${map.writeday}</td>
		</tr>
		<tr id="pp">
			<td id="pp" align="left">이름</td>
			<td id="pp" align="right">${map.name}</td>
		</tr>
		<tr id="pp2">
			<td id="pp2" align="left">이메일</td>
			<td id="pp2" align="right">${map.email}</td>
		</tr>
		<tr id="pp3">
			<td id="pp3" align="left">상담분류</td>
			<td id="pp3" align="right"><span style="font-size:14px;color:#747474;">우아한 형제들 > 배달의민족_문의하기 > ${que2}</span></td>
		</tr>
		<tr id="pp4">
			<td id="pp4" colspan="2" align="left">
			  <c:if test="${map.fname.length() == null && map.fname2.length() == null && map.fname3.length() == null}">
			  </c:if>
			  
			 <c:if test="${map.fname.length() != null && map.fname2.length() == null && map.fname3.length() == null}">
			    <img src="../resources/manto/${ map.fname}" width="100"><p>
			  </c:if>
			  
			    <c:if test="${map.fname.length() == null && map.fname2.length() != null && map.fname3.length() == null}">
				<img src="../resources/manto/${ map.fname2 }" width="100"><p>
			  </c:if>
			  
			   <c:if test="${map.fname.length() == null && map.fname2.length() == null && map.fname3.length() != null}">
				<img src="../resources/manto/${ map.fname3 }" width="100"> <p>
			  </c:if>
			  
			   <c:if test="${map.fname.length() != null && map.fname2.length() != null && map.fname3.length() == null}">
				<img src="../resources/manto/${ map.fname }" width="100"> <p>
				<img src="../resources/manto/${ map.fname2 }" width="100"> <p>
			  </c:if>
			  
			  
			  <c:if test="${map.fname.length() != null && map.fname2.length() == null && map.fname3.length() != null}">
				<img src="../resources/manto/${ map.fname }" width="100"> <p>
				<img src="../resources/manto/${ map.fname3 }" width="100"> <p>
			  </c:if>
			  
			  <c:if test="${map.fname.length() == null && map.fname2.length() != null && map.fname3.length() != null}">
				<img src="../resources/manto/${ map.fname2 }" width="100"> <p>
				<img src="../resources/manto/${ map.fname3 }" width="100"> <p>
			  </c:if>
			  
			  
			  
			  <c:if test="${map.fname.length() != null && map.fname2.length() != null && map.fname3.length() != null}">
				<img src="../resources/manto/${ map.fname }" width="100">
				<img src="../resources/manto/${ map.fname2 }" width="100">
				<img src="../resources/manto/${ map.fname3 }" width="100"> <p>
			  </c:if>
				${ fn:replace(map.content, replaceChar, "<br/>") } 
			</td>
		</tr>
		
		<tr id="pp">
			<td id="pp" align="left">답변</td>
			<td id="pp" align="right">${ fn:replace(map.content2, replaceChar, "<br/>") } </td>
		</tr>
		<tr height="50">
			<td colspan="2" align="center">
				<a href="delete?id=${map.id}" style="color: black;">삭제하기</a>
			</td>
		</tr>
	</table>
	</c:forEach>
    </form>
    </c:if>
</body>
</html>
    
