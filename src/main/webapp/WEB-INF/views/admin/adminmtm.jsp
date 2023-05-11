<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ include file="admintop.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
      section {
     width:1000px;
     margin:auto;
     margin-top:100px;
   }
   section #inner {
     width:280px;
     height:100px;
     overflow:auto;
   }
   section table {
     border-spacing:0px;
   }
   
     section table td {
     border-bottom:1px solid #cccccc;
     padding-top:5px;
     padding-bottom:5px;
   }
   
    section table tr:first-child td {
     border-bottom:1px solid #cccccc;
     padding-bottom:10px;
     padding-top:10px;
     font-size:18px;
     border-top:2px solid #cccccc;
   }
   section table tr:last-child td {
     border-bottom:2px solid #cccccc;
    }
 
    section #vform {
       position:absolute;
       width:300px;
       height:200px;
       border:1px solid #2ac1bc;
       background:white;
       visibility:hidden;
    }
    section #vform textarea {
       width:294px;
       height:148px;
       border:none;
       outline:none;
       border-bottom:1px solid #2ac1bc;
    }
    section #vform input[type=submit] {
       width:140px;
       height:40px;
       margin-top:6px;
       margin-left:6px;
    }
    section #vform input[type=button] {
       width:140px;
       height:40px;
       margin-top:6px;
    }
  </style>
 <script> // 답변달기
    function hideform()
    {
    	document.getElementById("vform").style.visibility="hidden";
    }
    function viewform(my,id)
    {
    	// 클릭된 tr의 배경색을 변경한다.
    	  // 모든 tr의 배경을 white
    	var tr=document.getElementsByClassName("tr");
    	for(i=0;i<tr.length;i++)
    		tr[i].style.background="white";
    	
    	  // 선택된 tr의 색을 변경
    	my.style.background="#eeeeee";
    	// 폼을 보이게 한다..
    	document.getElementById("vform").style.visibility="visible";
    	// mtm테이블의 id를 name="mid"인 폼에 값을 전달
    	document.aform.mid.value=id; 
    	// 폼의 위치를 적절하게
    	var w=document.documentElement.clientWidth;
    	var h=document.documentElement.clientHeight;
    	//alert(w+" "+h);
    	w=w/2-150;
    	h=h/2+document.documentElement.scrollTop-100;
    	 
    	document.getElementById("vform").style.left=w+"px";
    	document.getElementById("vform").style.top=h+"px";
    }
    
    function showimage(img1,img2,img3,id) //이미지 보이기
    {
 	   // 3개의 그림을 보이게 하기
 	   document.getElementsByClassName("img")[0].src="../resources/manto/"+img1;
 	   document.getElementsByClassName("img")[1].src="../resources/manto/"+img2;
 	   document.getElementsByClassName("img")[2].src="../resources/manto/"+img3;
 	   
 	   var w=document.documentElement.clientWidth;
       var h=document.documentElement.clientHeight;
    	   //alert(w+" "+h);
    	   w=w/2-90;
    	   h=h/2+document.documentElement.scrollTop-150;
    	 
    	   document.getElementById("uimg").style.visibility="visible";
    	   document.getElementById("uimg").style.left=w+"px";
    	   document.getElementById("uimg").style.top=h+"px";
    	   
    	   // 바꿀 이미지에 해당하는 레코드의 id를 폼태그에 전달
    	   document.fform.id.value=id;
    	   
    
    }
  </script>
</head>
<body>
   <section>
     <div id="main">
       <div id="uimg">
          <table width="1000" align="center">
            <tr align="center">
             <td width="150"> 사 진 </td>
             <td width="120"> 작성자 </td>
             <td width="150"> 이메일 </td>
             <td width="160"> 상담분류 </td>
             <td width="120"> 제 목 </td>
             <td width="200"> 내 용 </td>
             <td width="100"> 작성일 </td>
            </tr>
         <c:forEach items="${mlist}" var="mvo">
           <c:if test="${mvo.state==0}">
            <tr align="center" onclick="viewform(this,${mvo.id})" class="tr">
           </c:if>
           <c:if test="${mvo.state==1}">          
            <tr align="center" onclick="hideform()" class="tr">
          </c:if>
          
          <c:if test="${mvo.fname.length() == null}">
            <td><img src="../resources/img/no_image.png" width="100"></td>  
          </c:if> 
           <c:if test="${mvo.fname.length() != null}">
           <td><img src="../resources/manto/${mvo.fname}" width="70" height="60"></td>
           </c:if>
           <td>${mvo.userid}</td>
           <td>${mvo.email}</td>
           <c:choose>
             <c:when test="${mvo.que==0}">
              <c:set var="que2" value="B마트문의"/>
            </c:when>
            <c:when test="${mvo.que==1}">
              <c:set var="que2" value="오류문의"/>
           </c:when>
           <c:when test="${mvo.que==2}">
              <c:set var="que2" value="회원정보"/>
           </c:when>
           <c:when test="${mvo.que==3}">
              <c:set var="que2" value="리뷰문의"/>
           </c:when>
           <c:when test="${mvo.que==4}">
              <c:set var="que2" value="제휴문의"/>
           </c:when>
           <c:when test="${mvo.que==5}">
              <c:set var="que2" value="업소정보문의"/>
            </c:when>
           <c:when test="${mvo.que==6}">
              <c:set var="que2" value="이벤트문의"/>
           </c:when>
            <c:when test="${mvo.que==7}">
              <c:set var="que2" value="기타"/>
           </c:when>
         </c:choose> 
          <td>${que2}</td>
          <td>${mvo.title}</td>
          <td>
           <c:if test="${mvo.state==0}">
             <div id="inner"> ${mvo.content} </div>
           </c:if>
           <c:if test="${mvo.state==1}">          
            <div id="inner" style="color:;font-size:30px;"> 답변완료 </div>
           </c:if>
        </td>
        <td>${mvo.writeday}</td>
       </tr>
        </c:forEach>
      </table>
     </div>
     </div>
     <div id="vform">
       <form name="aform" method="post" action="amanto">
         <input type="hidden" name="mid">
         <textarea name="content" id="content"></textarea>
         <input type="submit" value="답변달기">
         <input type="button" onclick="hideform()" value="취소">
       </form>
     </div>
     
   </section>

</body>
</html>