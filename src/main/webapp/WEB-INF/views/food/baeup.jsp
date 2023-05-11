<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
  section {
    width:400px;
    margin:auto;
  }
   section input {
    width:400px;
    height:50px;
    margin-top:10px;
    font-size:17px;
  }
   
  section input[type=submit] {
    width:408px;
    height:54px;
    
  }
  section input[type=button] {
    width:408px;
    height:54px;
  }
  section input[type=checkbox] {
    width:20px;
    height:20px;
  }
 </style>
 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
  function juso_search()  // 우편번호 버튼 클릭시 호출 함수명
  {
    new daum.Postcode({
        oncomplete: function(data) {
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.pkc.zip.value = data.zonecode; // 우편번호
          document.pkc.juso.value = addr;  // 주소
          // 커서를 상세주소 필드로 이동한다.
          document.pkc.juso_etc.focus();
      }
    }).open();
  }
 </script>
</head>
<body>
  <section>
    <c:if test="${bvo.gibon==1}">
      <c:set var="imsi" value="checked"/>
      <c:set var="chk" value="1"/>
    </c:if>
    <c:if test="${bvo.gibon!=1}">
      <c:set var="imsi" value=""/>
      <c:set var="chk" value="0"/>
    </c:if>
  
    <form name="pkc" method="post" action="baeup_ok">
       <input type="hidden" name="id" value="${bvo.id}">
       <div align="center"> <h3> 배송지 수정 </h3></div>
       <div> <input type="text" name="phone" placeholder="전화번호 예시(010-0000-0000)" value="${bvo.phone}"> </div>
       <div> <input type="text" name="zip" placeholder="우편번호"  value="${bvo.zip}" readonly onclick="juso_search()"> </div>
       <div> <input type="text" name="juso" placeholder="주 소" readonly value="${bvo.juso}"> </div>
       <div> <input type="text" name="juso_etc" placeholder="상세 주소" value="${bvo.juso_etc}"> </div>
       <div style="height:28px"> <input type="checkbox" name="gibon" value="1" ${imsi}> 기본배송지로 사용   </div>
       <div> <input type="submit" value="수정"> </div>
       <div> <input type="button" value="삭제" onclick="location='baedel?id=${bvo.id}&chk=${chk}'"> </div>
    </form>
  </section>
</body>
</html>
