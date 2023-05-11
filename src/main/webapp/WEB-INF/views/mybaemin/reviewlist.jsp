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
      width: 1000px;
      margin: auto;
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
      cursor:hand;
   }
    
    section table tr {
      padding-bottom:23px;
    }
 
   section #rdel {
      width:38px;
      float:right;
      border-radius:15px;
	  background:#F6F6F6;
	  border:1px solid #F6F6F6;
	  margin-right:10px;
	  font-size:15px;
	  text-align:center;
	  cursor:pointer;
   
    }
    
  
    
    section #date {
      padding-bottom:40px;
      
       
    }
    
    section #menuup {
      width:auto;
      float:left;
      border-radius:15px;
	  background:#F6F6F6;
	  border:1px solid #F6F6F6;
	  margin-right:10px;
	  font-size:15px;
	  text-align:center;
	  cursor:pointer;
    }
    
    section #bs {
		position: relative;
		display: inline-block;
	}
    
    
    .speech-bubble {
	position: relative;
	background: #F6F6F6;
	border-radius: .4em;
	width:600px;
	padding:15px;
	left: 80px;
	bottom:50px;
	
}

.speech-bubble:after {
	content: '';
	position: absolute;
	left: 0;
	top: 50%;
	width: 0;
	height: 0;
	border: 30px solid transparent;
	border-right-color: #F6F6F6;
	border-left: 0;
	border-top: 0;
	margin-top: -25px;
	margin-left: -15px;
}
 </style>
 <script>
$(function(){
	$('rdel()').click(function(){
		if(!confirm('삭제하시면 복구할 수 없습니다. \n 정말로 삭제하시겠습니까?')){
			return false;
		}
	});
	
   });
 </script>
</head>
<body>
   <section>
     <form name="removefrm" method="post">
        <caption><h1 align="center">리뷰관리</h1></caption>
              <c:forEach items="${tmap}" var="map">
               <c:if test="${map.fname.length() == null}">
                <input type="hidden" name="id" value="${map.id}">
                <table width="800" align="center">
               <tr>
                <td onclick="location='../food/fcontent?fcode=${map.fcode}'"><b>${map.shop} > </b></td>
               </tr>
           
               <tr>
                 <td>
                  <c:forEach begin="1" end="${map.star}">
                    <img src="../resources/img/star2.png" width="30"  style="padding-top:15px;">
                  </c:forEach>
                  <c:forEach begin="1" end="${5-map.star}">
                    <img src="../resources/img/star1.png" width="30"  style="padding-top:15px;">
                  </c:forEach>
                    <span id="date"> ${map.writeday} </span>
                    <span id="rdel" onclick="location='reviewdel?id=${map.id}'">삭제</span>
                    <span id="rdel" onclick="location='update?id=${map.id}'">수정</span>
                 </td>
              </tr>
           
           <tr>
             <td align="center">
             </td>
           </tr>
           
           <tr>
             <td>${map.content }<p>
             </td>
           </tr>
           
           <tr>
             <td id="menuup"> ${map.menu2}</td>
           </tr>
           
               <tr>
                <td>
                 <c:if test="${map.state == 0 }">
                 </c:if>
                  <c:if test="${map.state != 0 }">
                  <img src="../resources/img/boss.PNG" width="60" id="bs"> 
                  <div class="speech-bubble">
                   <b>사장님 ${map.writeday2}</b><p>
                   ${map.content2} 
              </div>
              </c:if>
              </td>
           </tr>
          </table>
          </c:if> 
             
                <c:if test="${map.fname.length() != null}">
                <input type="hidden" name="id" value="${map.id}">
                <table width="800" align="center">
               <tr>
                <td onclick="location='../food/fcontent?fcode=${map.fcode}'"><b>${map.shop} > </b></td>
               </tr>
           
               <tr>
                 <td>
                  <c:forEach begin="1" end="${map.star}">
                    <img src="../resources/img/star2.png" width="30" style="padding-top:15px;">
                  </c:forEach>
                  <c:forEach begin="1" end="${5-map.star}">
                    <img src="../resources/img/star1.png" width="30" style="padding-top:15px;">
                  </c:forEach> 
                    <span id="date"> ${map.writeday} </span>
                    <span id="rdel" onclick="location='reviewdel?id=${map.id}'">삭제</span>
                 </td>
              </tr>
           
           <tr>
             <td align="center">
               <img src="../resources/pro/${map.fname}" width="500" style="padding:15px;">
             </td>
           </tr>
           
           <tr>
             <td>${map.content }<p>
             </td>
           </tr>
           
           <tr>
             <td id="menuup"> ${map.menu2}</td>
           </tr>
          
           
              <tr>
             <td>
             <c:if test="${map.state == 0 }">
             </c:if>
             <c:if test="${map.state != 0 }">
              <img src="../resources/img/boss.PNG" width="60" id="bs"> 
              <div class="speech-bubble">
              <b>사장님 ${map.writeday2}</b><p>
              ${map.content2} 
              </div>
              </c:if>
              </td>
           </tr>
          </table>
          </c:if> 
        </c:forEach>
        
     </form>
   </section>
   
</body>
</html>