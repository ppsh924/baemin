<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="admintop.jsp" %>  
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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

section table #btn {
	display: inline-block;
	width: 80px;
	font-size: 13px;
	cursor: pointer;
	border: 1px solid #2ac1bc;
	background: #2ac1bc;
	color: white;
	padding: 2px;
	cursor: pointer;
}

section table #btn2 {
	display: inline-block;
	width: 80px;
	border: 1px solid #cccccc;
	font-size: 13px;
}
</style> 

</head>  
  <section>
    <table width="1000" align="center">
      <tr align="center">
        <td> 이름 </td>
        <td> 전화번호  </td>
        <td> 이메일 </td>
        <td> 지역 </td>
        <td> 총구매금액 </td>
        <td> 가입일 </td>
        <td> 회원상태 </td>
      </tr>
      
      
      
       <c:forEach var="mvo" items="${mlist}" varStatus="status">
       
         <c:if test="${mvo.chong2 == null}">
             <c:set var="chong2" value="고마운분"/>
          </c:if>
       
          <c:if test="${mvo.chong2 < '5'}">
             <c:set var="chong2" value="고마운분"/>
          </c:if>
          <c:if test="${mvo.chong2 < '9'}">
             <c:set var="chong2" value="귀한분"/>
          </c:if>
          <c:if test="${mvo.chong2 < '20'}">
             <c:set var="chong2" value="더귀한분"/>
          </c:if>
          <c:if test="${mvo.chong2 >= '20'}">
             <c:set var="chong2" value="천생연분"/>
          </c:if>
          
          </c:forEach>
       <c:forEach var="mvo" items="${mlist}">
      <tr align="center">
        <td> ${mvo.name} </td>
        <td> ${mvo.phone}  </td>
        <td> ${mvo.email} </td>
        <td> ${fn:substring(mvo.juso,0,fn:indexOf(mvo.juso," "))}</td>
        <td align="right"> <fmt:formatNumber value="${mvo.chong}" pattern="#,###"/>원 </td>
        <td> ${mvo.writeday} </td>
        <td> 
           <c:if test="${mvo.state==0}">
             <span id="btn2"> 정상회원 </span>
           </c:if>
           <c:if test="${mvo.state==1}">
             <span id="btn" onclick="location='out_ok?id=${mvo.id}'"> 탈퇴신청중 </span>
           </c:if>
           <c:if test="${mvo.state==2}">
             <span id="btn2"> 탈퇴회원 </span>
           </c:if>
        </td>
      </tr>  
       </c:forEach>
    </table>
    
  </section>  

</body>
</html>
      