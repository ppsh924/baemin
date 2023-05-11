<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>     
    
<%@ include file="admintop.jsp" %>
<style>
section {
	width: 1000px;
	margin: auto;
	margin-top: 100px;
}

section table {
	border-spacing: 0px;
}

section table td {
	border-bottom: 1px solid #cccccc;
	padding-top: 5px;
	padding-bottom: 5px;
	font-size: 13px;
	text-align: center;
}

section table td span {
	border: 1px solid #2ac1bc;
	background: #2ac1bc;
	color: white;
	padding: 2px;
	cursor: pointer;
}

section table tr:first-child td {
	border-bottom: 1px solid #cccccc;
	padding-bottom: 10px;
	padding-top: 10px;
	border-top: 2px solid #cccccc;
}

section table tr:last-child td {
	border-bottom: 2px solid #cccccc;
}
</style>
<!-- admingumae.jsp -->
  <section>
     <table width="1000" align="center">
       <tr align="center">
         <td> 아이디 </td>
         <td> 주문코드 </td>
         <td> 가게명 </td>
         <td> 상품명 </td>
         <td> 구매수량 </td>
         <td> 결제수단 </td>    
         <td> 결제금액 </td>  
         <td>  배송지 </td>
         <td> 포장/배달 </td>
         <td> 진행상태 </td>
         <td> 진행상태변경 </td>
       </tr>
         <c:forEach items="${glist}" var="map">
      <c:if test="${map.baeprice == 0}">
       <c:if test="${map.state2==0}">
           <c:set var="state2" value="결제완료"/>
         </c:if>
         <c:if test="${map.state2==1}">
           <c:set var="state2" value="픽업준비"/>
         </c:if>
         <c:if test="${map.state2==2}">
           <c:set var="state2" value="픽업중"/>
         </c:if>
         <c:if test="${map.state2==3}">
           <c:set var="state2" value="픽업완료"/>
         </c:if>
         <c:if test="${map.state2==4}">
           <c:set var="state2" value="취소신청중"/>
         </c:if>
         <c:if test="${map.state2==5}">
           <c:set var="state2" value="취소완료"/>
         </c:if>
         <c:if test="${map.state2==6}">
           <c:set var="state2" value="환불신청중"/>
         </c:if>
      </c:if>
          
         
         
      <c:if test="${map.baeprice!=0}">
       <c:if test="${map.state2==0}">
           <c:set var="state2" value="결제완료"/>
         </c:if>
         <c:if test="${map.state2==1}">
           <c:set var="state2" value="배달준비"/>
         </c:if>
         <c:if test="${map.state2==2}">
           <c:set var="state2" value="배달중"/>
         </c:if>
         <c:if test="${map.state2==3}">
           <c:set var="state2" value="배달완료"/>
         </c:if>
         <c:if test="${map.state2==4}">
           <c:set var="state2" value="취소신청중"/>
         </c:if>
         <c:if test="${map.state2==5}">
           <c:set var="state2" value="취소완료"/>
         </c:if>
         <c:if test="${map.state2==6}">
           <c:set var="state2" value="환불신청중"/>
         </c:if>
      </c:if>
      
      
       
        
        
        <c:if test="${map.baeprice==0}"> 
           <c:set var="state3" value="포장"/>
         </c:if>
         <c:if test="${map.baeprice!=0}"> 
           <c:set var="state3" value="배달"/>
         </c:if>
   
      
          <c:choose>
             <c:when test="${map.pay==0}">
               <c:set var="pay" value="계좌이체"/>
             </c:when>
             <c:when test="${map.pay==1}">
               <c:set var="pay" value="쿠페이머니"/>
             </c:when>
             <c:when test="${map.pay==2}">
               <c:set var="pay" value="신용/체크카드"/>
             </c:when>
             <c:when test="${map.pay==3}">
               <c:set var="pay" value="법인카드"/>
             </c:when>
             <c:when test="${map.pay==4}">
               <c:set var="pay" value="휴대폰"/>
             </c:when>
             <c:when test="${map.pay==5}">
               <c:set var="pay" value="무통장입금"/>
             </c:when>
           </c:choose>
       <tr>
         <td>${map.userid }</td>
         <td>${map.jumuncode }</td>
         <td>${map.shop}</td>
         <td>${map.menu2}</td>
         <td>${map.su2 }</td>
         <td>${pay }</td>
         <td><fmt:formatNumber value="${map.cprice}" pattern="#,###"/>원 </td>
         <td>${map.juso }</td>
         <td> ${state3}</td>
         <td>${state2}</td>
         <td>
           <c:if test="${map.baeprice==0}">
             <c:if test="${map.state2 == 0 }">
              <span onclick="location='chgstate?state2=1&jumuncode=${map.jumuncode}'"> 픽업준비 </span>
            </c:if>
             <c:if test="${map.state2 == 1}">
              <span onclick="location='chgstate?state2=2&jumuncode=${map.jumuncode}'"> 픽업중 </span>
            </c:if>
             <c:if test="${map.state2 == 2}">
              <span onclick="location='chgstate?state2=3&jumuncode=${map.jumuncode}'"> 픽업완료 </span>
            </c:if>
             <c:if test="${map.state2 == 4}">
              <span onclick="location='chgstate?state2=5&jumuncode=${map.jumuncode}'"> 취소완료 </span>
            </c:if>
             <c:if test="${map.state2 == 7}">
              <span onclick="location='chgstate?state2=8&jumuncode=${map.jumuncode}'"> 환불완료 </span>
            </c:if>
           </c:if> 
         
         
           <c:if test="${map.baeprice!=0}"> 
            <c:if test="${map.state2 == 0 }">
              <span onclick="location='chgstate?state2=1&jumuncode=${map.jumuncode}'"> 배송준비 </span>
            </c:if>
             <c:if test="${map.state2 == 1}">
              <span onclick="location='chgstate?state2=2&jumuncode=${map.jumuncode}'"> 배송중 </span>
            </c:if>
             <c:if test="${map.state2 == 2}">
              <span onclick="location='chgstate?state2=3&jumuncode=${map.jumuncode}'"> 배송완료 </span>
            </c:if>
             <c:if test="${map.state2 == 4}">
              <span onclick="location='chgstate?state2=5&jumuncode=${map.jumuncode}'"> 취소완료 </span>
            </c:if>
             <c:if test="${map.state2 == 7}">
              <span onclick="location='chgstate?state2=8&jumuncode=${map.jumuncode}'"> 환불완료 </span>
            </c:if>
           </c:if>
         </td>
       </tr>

       </c:forEach>
     </table>
  </section>   

</body>
</html>