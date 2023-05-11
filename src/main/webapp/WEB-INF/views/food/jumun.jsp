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
	
	section input[type=button] {
		width:285px;
		height:50px;
		border:1px solid #ccc;
		background:white;
		/* margin-right:5px; */
		font-size:18px;
	}
	
	section #jdel {
		width:600px;
		margin:auto;
		text-align:center;
		margin-top:50px;
	}
	
	section #jumundel {
		width:600px;
		height:60px;
		border:1px solid #ccc;
		background:white;
		/* margin-right:5px; */
		font-size:18px;
		color:red;
	}
	
	section #copyright {
		width:600px;
		height:100px;
		margin:auto;
		padding-top:30px;
		text-align:center;
		margin-top:50px;
		font-size:14px;
		background:#F6F6F6;
		color:#8C8C8C;
	}
	
	section #cart {
		margin-top:50px;
		width:600px;
		height:60px;
		border:1px solid #2ac1bc;
		background:#2ac1bc;
		/* margin-right:5px; */
		font-size:18px;
		color:white;
		font-weight:700;
		border-radius:5px;
		font-size:22px;
	}
	
	section #a1 {
		text-align: center;
		font-size: 20px;
		font-weight: 900;
		height: 40px;
		padding-top: 10px;
	}
	
	section #a2 {
		font-size: 20px;
		color: black;
		font-weight: 900;
		width: 990px;
		height: 40px;
		padding-top: 10px;
		border: 1px solid #cccccc;
		padding-left: 10px;
	}
	
	section #a3 {
		font-size: 18px;
		text-align: left;
		height: 40px;
	}
	
	section td {
		height: 30px;
		font-size: 14px;
	}
	
	section #a4 {
		text-align: center;
		margin-top: 20px;
	}
	
	section #a4 span {
		display: inline-block;
		width: 200px;
		height: 30px;
		border: 1px solid #cccccc;
		padding-top: 8px;
		cursor: hand;
	}
</style> 
</head>
<body>
	<c:choose>
		<c:when test="${tmap.get(0).pay==0}">
			<c:set var="pay" value="신용카드" />
		</c:when>
		<c:when test="${tmap.get(0).pay==1}">
			<c:set var="pay" value="휴대전화" />
		</c:when>
		<c:when test="${tmap.get(0).pay==2}">
			<c:set var="pay" value="계좌이체" />
		</c:when>
		<c:when test="${tmap.get(0).pay==3}">
			<c:set var="pay" value="배민페이" />
		</c:when>
		<c:when test="${tmap.get(0).pay==4}">
			<c:set var="pay" value="신용카드" />
		</c:when>
		<c:when test="${tmap.get(0).pay==5}">
			<c:set var="pay" value="현금" />
		</c:when>
	</c:choose>

	<c:if test="${tmap.get(0).cla==0}">
		<c:set var="cla" value="문 앞" />
	</c:if>
	<c:if test="${tmap.get(0).cla==1}">
		<c:set var="cla" value="직접받고 부재시 문 앞" />
	</c:if>
	<c:if test="${tmap.get(0).cla==2}">
		<c:set var="cla" value="경비실" />
	</c:if>
	<c:if test="${tmap.get(0).cla==3}">
		<c:set var="cla" value="택배함" />
	</c:if>
<section>
	<table width="600" align="center">
		<caption><h2>주문상세</h2></caption>
		<tr>
			<td colspan="3" align="left">
				<b style="color:#EDA900;font-size:18px;">결제완료</b>
			</td>
		</tr>
		<tr height="50">
			<td colspan="3" align="left">
				<b style="font-size:22px;">${ tmap.get(0).shop }</b> <p>
			</td>
		</tr>
		<c:forEach items="${tmap}" var="map">
		<tr>
			<td colspan="3" align="left">
				<span style="font-size:18px;">${ map.menu }</span>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left">
				<span style="font-size:18px;"><fmt:formatNumber value="${ map.cprice }" pattern="#,###" type="number"/>원</span>
			</td>
		</tr>
		</c:forEach>
		<tr height="80">
			<td colspan="3" align="left">
				<span style="font-size:18px;color:#747474;">주문일시: ${ tmap.get(0).writeday }</span> <br>
				<span style="font-size:18px;color:#747474;">주문번호: ${ tmap.get(0).jumuncode }</span>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<input type="button" onclick="location='../mybaemin/jumunview'" value="주문 내역보기">
				<input type="button" onclick="location='../manto/write'" value="고객센터">
			</td>
		</tr>	
	</table>

	<table width="600" align="center">
		<c:forEach items="${tmap}" var="map">
		<tr height="70">
			<td colspan="2" align="left">
				<span style="font-size:20px;">${ map.menu }</span> <br>
				<span style="font-size:18px;color:#747474;">${ map.su }개</span>
			</td>
			<td rowspan="2" align="right" width="100">
				<img src="../resources/food/${ map.fimg }" width="100">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left">
				<span style="font-size:18px;"><fmt:formatNumber value="${ map.cprice/map.su }" pattern="#,###" type="number"/>원</span>
			</td>
		</tr>
		</c:forEach>
	</table> 
	
	<table width="600" align="center">
	<%-- <c:forEach items="${tmap}" var="map"> --%>
		<tr>
			<td colspan="3" align="left">
				<b style="font-size:18px;">결제금액</b> <p>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left">
				<span style="font-size:18px;">주문금액</span>
			</td>
			<td align="right">
				<span style="font-size:18px;"><fmt:formatNumber value="${ totalcprice }" pattern="#,###" type="number"/>원</span> 
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left" style="border-bottom: 1px solid #D5D5D5;">
				<span style="font-size:18px;">배달팁</span> <p>
			</td>
			<td align="right" style="border-bottom: 1px solid #D5D5D5;">
				<span style="font-size:18px;"><fmt:formatNumber value="${tmap.get(0).baeprice}" pattern="#,###" type="number"/>원</span> <p>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left"> <p>
				<b style="font-size:20px;">총 결제금액</b>
			</td>
			<td align="right">
				<b style="font-size:22px;"><fmt:formatNumber value="${ totalcprice+tmap.get(0).baeprice }" pattern="#,###" type="number"/>원</b> 
			</td>
		</tr>
		<tr>
			<td colspan="2" align="left"> <p>
				<b style="font-size:20px;">결제방법</b>
			</td>
			<td align="right">
				<b style="font-size:22px;">${pay}</b> 
			</td>
		</tr>
		<%-- </c:forEach> --%>
	</table>
	
	<table width="600" align="center">
		<tr>
			<td colspan="3" align="left">
				<b style="font-size:18px;">배달주소</b> <p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left" style="border-bottom: 1px solid #D5D5D5;">
				<span style="font-size:18px;color:#747474;">${ tmap.get(0).juso }</span> <p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left">
				<b style="font-size:18px;">전화번호</b> <p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left" style="border-bottom: 1px solid #D5D5D5;">
				<span style="font-size:18px;color:#747474;">${ tmap.get(0).phone }</span> <p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left">
				<b style="font-size:18px;">가게 사장님께</b> <p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left" style="border-bottom: 1px solid #D5D5D5;">
				<span style="font-size:18px;color:#747474;">${ tmap.get(0).content }</span> <p>
			</td>
		</tr>
		<tr height="50">
			<td colspan="3" align="left">
				<b style="font-size:18px;">라이더님께</b> <p>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="left">
				<span style="font-size:18px;color:#747474;">조심히 안전하게 와주세요 :)</span> <p>
			</td>
		</tr>
	</table>
	
	<div id="jdel"><input type="button" id="jumundel" onclick="location='jumundel?id=${ tmap.get(0).id }'" value="주문내역 삭제"></div>
	
	<div id="copyright">
		24시간 연중무휴 고객센터 <b style="font-size:22px;color:black;">1600-0987</b> <p>
		Copyright Woowa Brothers in Song-pa, All Rights Reserved.
	</div>
	
	<div><input type="button" id="cart" onclick="location='../food/fcontent?fcode=${ tmap.get(0).fcode }'" value="같은메뉴 담기"></div>
</section>
</body>
</html>