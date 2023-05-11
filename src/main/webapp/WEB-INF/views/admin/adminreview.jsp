<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="admintop.jsp" %>  
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
	margin-top: 100px;
}

section table {
	border-spacing: 0px;
}

section #content {
	width: 330px;
	height: 100px;
	overflow: auto;
}

section table td {
	border-bottom: 1px solid #cccccc;
	padding-top: 5px;
	padding-bottom: 5px;
	cursor: pointer;
}

section table tr:first-child td {
	border-bottom: 1px solid #cccccc;
	padding-bottom: 10px;
	padding-top: 10px;
	font-size: 18px;
	border-top: 2px solid #cccccc;
}

section table tr:last-child td {
	border-bottom: 2px solid #cccccc;
}

section table #del {
	background: #2ac1bc;
	color: white;
	padding: 3px;
	font-size: 13px;
	cursor: pointer;
}
</style>

</head>
<body>
  <section>
     <table width="1000" align="center">
       <tr align="center">
         <td>  </td>
         <td> 후기 사진 </td>
         <td> 사용자 </td>
         <td> 상품명 </td>
         <td> 별점 </td>
         <td> 내용 </td>
         <td> 작성일 </td>
         <td> 삭제 </td>
       </tr>
      <c:forEach items="${rlist}" var="rvo">
       <tr align="center">
           <td> 
             <c:if test="${rvo.state==0}">
               <span onclick="adminreview('${rvo.content}',${rvo.grp},'${rvo.fcode}',${rvo.id })"> 후기 </span>
             </c:if>
             <c:if test="${rvo.state==1}">
               <span> 답변완료 </span>
             </c:if>
          </td>
          
          <c:if test="${rvo.fname.length() == null}">
            <td><img src="../resources/img/no_image.png" width="100">  </td>  
          </c:if> 
          
           <c:if test="${rvo.fname.length() != null}">
             <td> <img src="../resources/pro/${rvo.fname}" width="100"> </td>
          </c:if> 
        
         <td> ${rvo.userid} </td>
         <td> ${rvo.shop2} </td>
         
         <c:if test="${rvo.star == 0 }">
          <td> </td>
         </c:if>
         
         <c:if test="${rvo.star != 0 }">
          <td> ${rvo.star} </td>
         </c:if>
         
         <td> <div id="content">${rvo.content}</div> </td>
         <td> ${rvo.writeday} </td>
         <td> <span id="del" onclick="location='reviewdel?id=${rvo.id}'"> 삭제 </span> </td>
       </tr>
       </c:forEach>
     </table>
      <div id="ans">
       <form name="aform" method="post" action="areview">
         <input type="hidden" name="fcode">
         <input type="hidden" name="rid">
         <input type="hidden" name="grp">
         <div id="q"></div>
         <textarea name="content"  placeholder="답변쓰기" id="ans_content"></textarea> 
         <div align="center"> <input type="submit" value="답변달기"> </div>
       </form>
     </div>
       
     
  </section>
    <script>
      function adminreview(content,grp,fcode,rid)
      {
    	  document.aform.grp.value=grp;
    	  document.aform.fcode.value=fcode;
    	  document.aform.rid.value=rid;
    	  
    	  var w=document.documentElement.clientWidth;
     	  var h=document.documentElement.clientHeight;
     	  //alert(w+" "+h);
     	  w=w/2-200;
     	  h=h/2+document.documentElement.scrollTop-200;
     	 
     	  document.getElementById("ans").style.left=w+"px";
     	  document.getElementById("ans").style.top=h+"px";
     	  
     	  document.getElementById("ans").style.visibility="visible";
     	  document.getElementById("q").innerHTML=content;
      }
      
     
    </script>
    <style>
      section #ans {
         position:absolute;
         width:400px;
         height:440px;
         border:3px solid black;
         background:white;
         visibility:hidden;
      }
      section #q {
         width:390px;
         height:200px;
         overflow:auto;
         border:1px solid black;
         padding:4px;
      }
      section #ans textarea {
         width:390px;
         height:180px;
         border:none;
         outline:none;
      }
    </style>
</body>
</html>





