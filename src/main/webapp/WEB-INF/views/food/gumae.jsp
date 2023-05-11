<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>   
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
	
	section table {
		margin-top: 50px;
		/* background: white; */
		box-shadow: 0px 3px 6px #ccc;
		border-spacing: 0px; /* 셀과 셀의 공간 */
		/* border-left: 1px solid #D5D5D5;
		border-right: 1px solid #D5D5D5;
		border-bottom: 1px solid #D5D5D5; */
		font-size: 18px;
		padding: 10px;
	}
	
	section table tr:last-child td {
		height: 70px;
	}
	
	section table td {
		height: 70px;
		padding-left: 10px;
	}
	
	section table tr td:first-child {
		background: #white;
		padding-right: 10px;
		color: black;
		height: 70px;
	}
	
	section #delivery_juso {
		width:300px;
		height:35px;
		border: 1px solid #2ac1bc;
		background:#2ac1bc; 
		text-align:center;
		color:white;
		border-radius:20px;
		font-weight:700;
		padding-top:7px;
		display:none;
	}
	
	section #juso {
		display: inline-block;
		width: 540px;
		height: 45px;
		background: #F6F6F6;
		padding-left: 10px;
		padding-top: 15px;
		border-radius: 5px;
	}
	
	section input[type=checkbox] {
		width: 20px;
		height: 20px;
		vertical-align: bottom;
	}
	
	section #detail {
		width: 60px;
		border-radius: 15px;
		background: #F6F6F6;
		border:1px solid #F6F6F6;
	}
	
	section #phonechg {
		width: 46px;
		height: 28px;
		border-radius: 15px;
		border:1px solid #F6F6F6;
		background: #F6F6F6;
		margin-right: 5px;
		padding-left: 7px;
		text-align: center;
		font-size: 16px;
		vertical-align: top;
	}
	
	section #spoon {
		width: 540px;
		height: 45px;
		border: 1px solid #E0F8E6;
		background: #E0F8E6;
		padding-top: 15px;
		padding-left: 10px;
		font-size: 20px;
		border-radius: 5px;
	}
	
	section #content {
		width: 540px;
		height: 55px;
		border-radius: 5px;
		background: #F6F6F6;
		border: 1px solid #F6F6F6;
		padding-left: 10px;
	}
	
	section #rider {
		width: 550px;
		height: 50px;
		font-size: 18px;
		padding-left: 10px;
		border-radius: 5px;
		border: 1px solid #BDBDBD;
	}
	
	section #pay {
		width: 550px;
		height: 125px;
		display:none;
	}
	
	section #card, #gigan, #tong, #bank {
		width:80px;
		height:30px;
		outline:none;
	}
	
	section input::placeholder {
		font-size:18px;
		color:#BDBDBD;
	}
	
	#cc {
		width: 300px;
		background: black;
		color: white;
	}
	
	section #bs {
		font-size: 13px;
		font-weight: 100;
		display: inline-block;
		width: 80px;
		height: 13px;
		border: 1px solid white;
		background: white;
		padding: 4px;
		margin-left: 20px;
		cursor: pointer;
	}
	
	#abc {
		background: #D5D5D5;
		height: 30px;
		padding-top: 15px;
		color: black;
		border-spacing: 0px;
	}
	
	table input[type=text] {
		width: 500px;
		height: 30px;
	}
	
	table input[type=button] {
		width: 100px;
		border-radius: 10px;
		background: #D5D5D5;
		border: 1px solid #D5D5D5;
		padding-right: 20px;
		margin-left: 10px;
		font-size: 15px;
		text-align: center;
	}
	
	#small {
		font-size: 14px;
		color: #8C8C8C;
	}
	
	section #caution {
		background:#EAEAEA;
		color:#8C8C8C;
	}
	
	section input[type=submit] {
		margin-top:50px;
		width: 600px;
		height: 70px;
		font-size:30px;
		border: 1px solid #2ac1bc;
		background:#2ac1bc; 
		color:white;
		font-weight:900;
		border-radius:5px;
	}
</style> 
<script>
	function len_check(my) {
		document.getElementById("len").innerText = my.length;
	}
	function bae_search() {
		open("baeview", "", "width=500,height=620");
	}
	function chgcla() {
		var cla = document.gform.cla.value;
		var id = document.getElementById("id").value;
		// alert(cla);
		open("chgcla?cla=" + cla + "&id=" + id, "", "width=360,height=400");
	}
	function pay_change(n) {
		var pay = document.getElementsByClassName("pay");

		for (i = 0; i < pay.length; i++) {
			pay[i].style.display = "none";
			document.gform.gibonpay[i].checked = false;
		}
		pay[n].style.display = "block";
		document.gform.gibonpay[n].checked = true;
	}

	window.onload = function() {
		// id=delivery_juso 요소를 보이게 하기
		document.getElementById("delivery_juso").style.display = "block";
		setTimeout(
				function() {
					document.getElementById("delivery_juso").style.display = "none";
				}, 3000);
	}
	
	function bae_search()
	  {
		  open("baeview","","width=400,height=500");
	  }
</script>
</head>
<body">
<section>
	<form name="gform" method="post" action="gumae_ok" onsubmit="return check(this)">
    <input type="hidden" id="id" name="id" value="${bvo.id}">  <!-- 배송테이블의 id -->
    	<input type="hidden" name="cla" value="${bvo.cla}">
   
 	<!-- 배달정보 -->
	<table width="600" align="center">
		<h2>주문하기</h2>	
		<tr>
			<td width="300" align="left">
				<c:if test="${ clist.get(0).state == 0 }">
					<b>배달로 받을게요</b>
				</c:if>
				<c:if test="${ clist.get(0).state == 1 }">
					<b>포장해서 직접 가져갈게요</b>
				</c:if>
			</td>
			<td colspan="2" align="right">
				<c:if test="${ clist.get(0).state == 0 }">
					40~50분 후 도착
				</c:if>
				<c:if test="${ clist.get(0).state == 1 }">
					9~19분 후 픽업
				</c:if>			
			</td>
		</tr>
		<tr height="100">
			<td colspan="3" align="left">
				<div id="delivery_juso">배달주소가 맞는지 확인해주세요.</div>
				<span style="font-size:20px;" class="my">${bvo.juso}</span> <p>
				<span id="juso" class="my">${bvo.juso_etc}</span>
			</td>
		</tr>	
			<c:if test="${bvo.cla==0}">
				<c:set var="cla" value="문 앞"/>
			</c:if>
			<c:if test="${bvo.cla==1}">
				<c:set var="cla" value="직접받고 부재시 문 앞"/>
			</c:if>
			<c:if test="${bvo.cla==2}">
				<c:set var="cla" value="경비실"/>
			</c:if>
			<c:if test="${bvo.cla==3}">
				<c:set var="cla" value="택배함"/>
			</c:if>
		<tr>
			<td colspan="2" align="left">배달 요청 장소</td>
			<td align="right" width="300">
				<span class="my" id="my2"> ${cla} </span> 
				<input type="button" id="phonechg" onclick="chgcla()" value="변경">
			</td>
		</tr>
		<tr height="100">
			<td colspan="2" align="left">
				<p>
				<span style="font-size:20px;" class="my">${ bvo.phone }</span>  <p>
				<input type="checkbox"> 안심번호 사용
				<input type="button" id="detail" value="자세히">
			</td>
			<td align="right">
				<input type="button" id="phonechg" onclick="bae_search()" value="변경">
				<p>
				<p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left">
				<span style="font-size:16px;color:#747474;">내 주문횟수를 가게에 제공하지 않습니다. (최근 6개월)</span>
			</td>
		</tr>
	</table>	
	
	<!-- 요청사항 -->
	<table width="600" align="center">
		<tr>
			<td colspan="3" align="left">
				<p> <b>요청사항</b> <p>
				<div id="spoon"><input type="checkbox"> 일회용 수저, 포크 안 주셔도 돼요</div> <p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left">
				<p> <span style="color:#747474;">가게 사장님께</span> <p>
				<input type="text" name="content" id="content" maxlength="99" onkeyup="len_check(this.value)" placeholder="예) 견과류 빼주세요, 덜 맵게 해주세요"> <p>
				<input type="checkbox"> 다음에도 사용
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left">
				<p> <span style="color:#747474;">라이더님께</span> <p>
				<select id="rider">
					<option>조심히 안전하게 와주세요 :)</option>
				</select> <p>
				<input type="checkbox"> 이 주소에 다음에도 사용 <input type="button" id="detail" value="자세히">
			</td>
		</tr>
	</table>
	
	<!-- 결제수단 선택 -->
    <table width="600" align="center">
    	<tr>
			<td colspan="3" align="left">
				<b>결제수단</b>
			</td>
		</tr>
        <tr height="200">
        	<td align="left"> 배민에서 결제 <span id="small">웹에서 미리 결제</span> <p>  
	           	<input type="radio" name="pay" value="0" checked onclick="pay_change(0)">신용카드 &nbsp;
	           	<input type="radio" name="pay" value="1" onclick="pay_change(1)">휴대전화 &nbsp;
	           	<input type="radio" name="pay" value="2" onclick="pay_change(2)">계좌이체 &nbsp;
	           	<input type="radio" name="pay" value="3" onclick="pay_change(3)">배민페이 &nbsp;
           
				<div class="pay" id="pay" style="display:block;">
				* 카드선택 
				<select name="card" id="card">
					<option value="0">선 택</option>
					<option value="1">신한카드</option>
					<option value="2">우리카드</option>
					<option value="3">농협카드</option>
					<option value="4">국민카드</option>
					<option value="5">삼성카드</option>
					<option value="6">롯데카드</option>
				</select>
				<hr>
				* 할부기간 
				<select name="gigan" id="gigan">
					<option value="0">선 택</option>
					<option value="1">일시불</option>
					<option value="2">2개월</option>
					<option value="3">3개월</option>
					<option value="4">4개월</option>
					<option value="5">5개월</option>
					<option value="6">6개월</option>
				</select> 
				* 할부는 50,000원 이상만 가능합니다.
				<hr>
				<input type="checkbox" name="gibonpay" value="0" checked> 기본 결제 수단으로 사용
           		</div>
				
				<div class="pay" id="pay">
				* 통신사 종류 
				<select name="tong" id="tong">
					<option value="0">SKT</option>
					<option value="1">KT</option>
					<option value="2">LG</option>
					<option value="3">알뜰폰</option>
				</select>
				<hr>
				<input type="checkbox" name="gibonpay" value="1"> 기본 결제 수단으로 사용
				</div>

				<div class="pay" id="pay">
				* 은행 선택 
				<select name="bank" id="bank">
					<option value="0">선 택</option>
					<option value="1">국민은행</option>
					<option value="2">우리은행</option>
					<option value="3">신한은행</option>
					<option value="4">농협은행</option>
					<option value="5">카카오</option>
				</select>
				<hr>
				<input type="checkbox" name="gibonpay" value="2"> 기본 결제 수단으로 사용
				</div>
					
				<div class="pay" id="pay">
				* 잔액 0원
				<hr>
				* 잔액이 부족할 경우, 결제 진행 시에 충전됩니다.
				<hr>
				<input type="checkbox" name="gibonpay" value="3"> 기본 결제 수단으로 사용
				</div>
			</td>
        </tr>
        <tr height="150">
	        <td align="left">
	        	<p>
	        	현장결제 <span id="small">음식받고 직접 결제할 수 있어요!</span> <p>          
	           	<input type="radio" name="pay" value="4" onclick="pay_change(4)">신용카드 &nbsp;
	           	<input type="radio" name="pay" value="5" onclick="pay_change(5)">현금
	       	</td>
     	</tr>
    </table>
    
    <table width="600" align="center" id="present">
    	<tr>
			<td colspan="2" align="left" style="border-bottom: 1px solid #D5D5D5;">선물함</td>
			<td align="right" style="color:#8C8C8C;border-bottom: 1px solid #D5D5D5;">
				<span style="display:inline-block;vertical-align:top;">0원</span>
				<img src="../resources/mybaemin/next.png" width="30">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left" style="border-bottom: 1px solid #D5D5D5;">할인쿠폰</td>
			<td align="right" style="color:#8C8C8C;border-bottom: 1px solid #D5D5D5;">
				<span style="display:inline-block;vertical-align:top;">1개 보유</span>
				<img src="../resources/mybaemin/next.png" width="30">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left" style="color:#8C8C8C;">배민포인트</td>
			<td align="right" style="color:#8C8C8C;">0원</td>
		</tr>
    </table>
        
    <table width="600" align="center">
       	<tr>
			<td colspan="3" align="left">
				<b>결제금액</b>
			</td>
		</tr>
		<c:forEach items="${clist}" var="cvo">
		<input type="hidden" name="id" value="${bvo.id}">  <!-- 배송테이블의 id -->
	      
	      	<input type="hidden" name="juk" value="0">
	      	<input type="hidden" name="fcode" value="${fcode}">
	      	<input type="hidden" name="su2" value="${cvo.su}">
	      	<input type="hidden" name="menu" value="${cvo.menu}">
	      	<input type="hidden" name="privateprice" value="${privateprice}">
	     	<input type="hidden" name="state" value="${cvo.state}">
	     	<input type="hidden" name="baeprice" value="${cvo.baeprice}">
		<tr>
         	<td colspan="2" align="left">${ cvo.menu } X ${ cvo.su }개</td>
         	<td align="right"> 
         		<fmt:formatNumber value="${ cvo.price }" pattern="#,###" type="number"/>원
         	</td> 
         	
       	</tr> 
       	</c:forEach>
       	<tr>
         	<td colspan="2" align="left" style="border-bottom: 1px solid #D5D5D5;">
         		배달팁
         		<input type="button" id="detail" value="자세히">
         	</td>
         	<td align="right" style="border-bottom: 1px solid #D5D5D5;"> 
         		<fmt:formatNumber value="${pbae}" pattern="#,###" type="number"/>원
         	</td>
       	</tr>
       	<tr>
         	<td colspan="2" align="left"><b>총 결제금액</b></td>
         	<td align="right"> 
         		<input type="hidden" name="cprice" value="${payprice}">
         		<b><fmt:formatNumber value="${payprice}" pattern="#,###" type="number"/>원</b>
         	</td>
       	</tr>
 	</table>
     
 	<!-- 주의사항 -->
 	<table width="600" align="center" id="caution">
		<tr>
			<td colspan="2" align="left" style="border-bottom: 1px solid #D5D5D5;">배달상품 주의사항</td>
			<td align="right" style="border-bottom: 1px solid #D5D5D5;">
				<img src="../resources/mybaemin/bottom.png" width="50">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left" style="border-bottom: 1px solid #D5D5D5;">개인정보 제3자 제공</td>
			<td align="right" style="border-bottom: 1px solid #D5D5D5;">
				<img src="../resources/mybaemin/bottom.png" width="50">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left">업주의 개인정보 처리 위탁 안내</td>
			<td align="right">
				<img src="../resources/mybaemin/bottom.png" width="50">
			</td>
		</tr>
	</table>
  	<div id="submit"><input type="submit" value="<fmt:formatNumber value="${payprice}" pattern="#,###" type="number"/>원 결제하기"></div>
	</form>
</section>
</body>
</html>