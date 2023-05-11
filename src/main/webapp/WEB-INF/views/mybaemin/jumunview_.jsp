<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>     
     <!-- myshop -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		font-size: 18px;
		padding: 10px;
	}
	
	section #jumundetail {
		width:80px;
		height:30px;
		background:white;
		border-radius:20px;
		border:1px solid #ccc;
		cursor:pointer;
	}
</style>
</head>
<body>       
<section>
    <caption><h2>주문내역</h2></caption>
    <c:forEach items="${tmap}" var="map">
		<c:if test="${map.state2==0}">
			<c:set var="state2" value="결제완료" />
		</c:if>
		<c:if test="${map.state2==1}">
			<c:set var="state2" value="음식준비중" />
		</c:if>

		<!-- 포장일 때 -->
		<c:if test="${map.baeprice==0}">
			<c:if test="${map.state2==2}">
				<c:set var="state2" value="음식준비완료" />
			</c:if>
			<c:if test="${map.state2==3}">
				<c:set var="state2" value="픽업완료" />
			</c:if>
		</c:if>

		<!-- 배달일 때 -->
		<c:if test="${map.baeprice!=0}">
			<c:if test="${map.state2==2}">
				<c:set var="state2" value="배달중" />
			</c:if>
			<c:if test="${map.state2==3}">
				<c:set var="state2" value="배달완료" />
			</c:if>
		</c:if>

		<c:if test="${map.state2==4}">
			<c:set var="state2" value="취소신청중" />
		</c:if>
		<c:if test="${map.state2==5}">
			<c:set var="state2" value="취소완료" />
		</c:if>

	<%-- <c:if test="${map.state2==6}">
           <c:set var="state2" value="교환신청중"/>
         </c:if>
         <c:if test="${map.state2==7}">
           <c:set var="state2" value="교환완료"/>
         </c:if>
         <c:if test="${map.state2==8}">
           <c:set var="state2" value="반품신청중"/>
         </c:if>
         <c:if test="${map.state2==9}">
           <c:set var="state2" value="반품완료"/>
         </c:if> --%>

		<c:choose>
			<c:when test="${ map.yoil == 1 }">
				<c:set var="yoil2" value="일" />
			</c:when>
			<c:when test="${ map.yoil == 2 }">
				<c:set var="yoil2" value="월" />
			</c:when>
			<c:when test="${ map.yoil == 3 }">
				<c:set var="yoil2" value="화" />
			</c:when>
			<c:when test="${ map.yoil == 4 }">
				<c:set var="yoil2" value="수" />
			</c:when>
			<c:when test="${ map.yoil == 5 }">
				<c:set var="yoil2" value="목" />
			</c:when>
			<c:when test="${ map.yoil == 6 }">
				<c:set var="yoil2" value="금" />
			</c:when>
			<c:when test="${ map.yoil == 7 }">
				<c:set var="yoil2" value="토" />
			</c:when>
		</c:choose>
	</c:forEach>
     
     <c:if test="${ flist.get(0).fcode == glist.get(0).fcode }">
     <c:forEach items="${tmap}" var="map"> 
     <table width="600" align="center">
      <input type="hidden" id="jum" value="${map.jumuncode}">
		<tr height="60">
			<td colspan="2" align="left">
				<span style="color:#5D5D5D;">${ tmap.get(0).writeday }(${ yoil2 })</span>
				<c:if test="${ tmap.get(0).baeprice == 0 && map.state2==3 }">
					<span style="color:#5D5D5D;">·픽업완료</span>
				</c:if>
				<c:if test="${ tmap.get(0).baeprice != 0 && map.state2==3 }">
					<span style="color:#5D5D5D;">·배달완료</span>
				</c:if>
				<c:if test="${ map.state2==4 }">
					<span style="color:#5D5D5D;">·취소진행중</span>
				</c:if>
				<c:if test="${ map.state2==5 }">
					<span style="color:#5D5D5D;">·취소완료</span>
				</c:if>
			</td>
			<td align="right">
				<input type="button" id="jumundetail" onclick="location='../mybaemin/jumundetail?jumuncode=${ map.jumuncode }'" value="주문상세">
				<img src="">
			</td>
		</tr>         
        <tr height="150">
        	<td align="left" width="100">
				<img src="../resources/food/${ map.fimg }" width="100">
			</td>
        	<td colspan="2" align="left">
        		<a href="../food/fcontent?fcode=${ map.fcode }"><b style="font-size:22px;color:black;">${ map.shop } <img src="../resources/mybaemin/next.png" width="20"></b></a> <p>
        		<%-- <c:if test="${  }"> --%> 
        		
        			${ map.menu } ${ map.su }개 <fmt:formatNumber value="${ map.cprice }" pattern="#,###"/>원  ···<br>
        	 
        		<%-- </c:if> --%>
        	</td>
        </tr> 
     </table>
     </c:forEach>   
     </c:if>
      
     
		 <tr align="center">
           <td width="140"> ${map.writeday} </td>
           <td width="80"> <img src="../resources/food/${map.fimg}" width="50" height="40"> </td>
           <td width="300"> ${map.shop} </td>
            <td width="100"> ${map.menu} </td>
           <td width="40"> ${map.su}개 </td>
           <td width="100" align="right"> <fmt:formatNumber value="${map.cprice/map.su}" pattern="#,###"/>원 </td>
           <td width="140"> ${state2} </td>
           <td width="200">
           <c:if test="${map.state2==0 || map.state2==1}">
            <span onclick="location='chgstate?state2=4&jumuncode=${map.jumuncode}'"> 주문취소 </span>
           </c:if>
         
           <c:if test="${map.state2==3}">
            <span onclick="location='chgstate?state2=6&id=${map.id}'"> 교환신청 </span>
           </c:if> 
           
           <c:if test="${map.state2==3}">
            <span onclick="location='chgstate?state2=8&id=${map.id}'"> 반품신청 </span>
           </c:if>
           
           <c:if test="${map.state2==3}">
              <c:if test="${map.hugi==0}">
                 <span onclick="location='review?guid=${map.id}'"> 상품후기 </span>
              </c:if>
              <c:if test="${map.hugi==1}">
                 <span style="border-color:#cccccc"> 상품후기 </span>
              </c:if> 
           </c:if>  
           
           <c:if test="${map.state2==4}">  <!-- 결제완료로 state변경 -->
            <span onclick="location='chgstate?state2=0&jumuncode=${map.jumuncode}'"> 신청취소 </span>
           </c:if>
           <c:if test="${map.state2==6 || map.state2==8}">  <!-- 배송완료로 state변경 -->
            <span onclick="location='chgstate?state=3&id=${map.id}'"> 신청취소 </span>
           </c:if>
           
			</td>  
		</tr> 
    
	
</section>
</body>
</html>