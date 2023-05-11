<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width:1000px;
		/* height:600px; */
		margin:auto;
	}
	
	section div{
		margin-top:12px;
	}
	
	section #title {
		background:white;
		box-shadow:0px 3px 6px #ccc;
	}
	
	section #m3_su {
		outline:none;
		width:40px;
		height:20px;
	}
	
	section #suform {
		margin-top:20px;
		font-size:14px;
	}
	
	section input[type=button] {
		float:right;
		width:250px;
		height:39px;
		background:#2ac1bc;
		border:1px solid #2ac1bc;
		border-radius:5px;
		color:white;
		font-size:16px;
		font-weight:700;
	}
	
</style>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
<script>
	$(function() {
   		$("#m3_su").spinner({
   			min:1,
   			max:10,
   			
   			// spinner의 값을 바꿀 때 실행되는 함수
   			spin:function(e,ui){
   				
   				// alert(ui.value);
   				// ui.value(상품선택수)*상품가격 => 전달
   				var m3_price = ui.value * ${ fvo.m3_price };
   				m3_price = new Intl.NumberFormat().format(m3_price);
   				document.getElementById("pri").value = m3_price + "원 담기"; 
   			}
   		});
	});
	
	function cartadd(m3){
		/* 로그인 한 상태 */
		<c:if test="${ userid != null }">
			<c:set var="chk" value="true"/>
		</c:if>
		/* 로그인 안 한 상태 */
		<c:if test="${ userid == null }">
			<c:set var="chk" value="false"/>
		</c:if>
		
		// 수량은 form태그에서 읽어온다.
		var su = document.pform.m3_su.value;
		var price = parseInt(document.pform.pri.value.replace(/,/gi, ""));
		// alert(document.pform.pri.value);
	    var menu = document.pform.m3.value;
	    var baeprice = document.pform.baeprice.value;
		// alert(price);
		var chk = new XMLHttpRequest();
		chk.onload = function(){
			// alert(chk.responseText);
			document.getElementById("aa").innerText=chk.responseText;
			if(chk.responseText == "0"){
				alert("장바구니에 메뉴를 추가했습니다.");
				opener.location.reload();
				close();
			}else{
				alert("예상하지 않은 오류가 발생하였습니다.");
			}
		}
		chk.open("get", "cartadd?fcode=${ fvo.fcode }&su="+su+"+&price="+price+"+&menu="+menu+"+&baeprice="+baeprice);
		chk.send();
	}
</script>
</head>
<body>
<div id="aa"></div>
	<section>
		<form name="pform" method="post" action="fcontent">
		<input type="hidden" name="m3" value="${ fvo.m3 }">
		<input type="hidden" name="fcode" value="${ fvo.fcode }">
		<input type="hidden" name="baeprice" value="${ fvo.baeprice }">
		<table width="450"> 
 
			<tr>
				<td colspan="2" align="center">
					<img src="../resources/food/${ fvo.m3_img }" width="300" height="200"> <p>
					
				</td>
			</tr>
			<tr height="100" id="title">
				<td colspan="2" align="center">
					<b style="font-size:18px;">${ fvo.m3 }</b> <p>
					<span style="font-size:14px;">${ fvo.m3_ex }</span>
				</td>
			</tr>
			<tr height="50">
				<td>가격</td>
				<td align="right"><fmt:formatNumber value="${ fvo.m3_price }" pattern="#,###" type="number" />원</td>
			</tr>
			<tr height="50">
				<td>수량</td>
				<td align="right" id="suform"><input type="text" name="m3_su" id="m3_su" value="1" readonly>개</td>
			</tr>
			<tr height="50">
				<td>
					<span style="font-size:14px;color:#8C8C8C;">배달최소주문금액 </span> <br>
					<fmt:formatNumber value="${ fvo.minorder }" pattern="#,###" type="number" />원
				</td>
				<td>
					<input id="pri" type="button" onclick="cartadd('${ fvo.m3 }')" value="<fmt:formatNumber value="${ fvo.m3_price }" pattern="#,###" type="number" />원 담기">
				</td>
			</tr>
	 
		</table>
		</form>
	</section>
</body>
</html>