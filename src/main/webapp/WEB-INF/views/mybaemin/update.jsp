<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>     
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="style.css">

<style>@import url("style.css")</style>
 <style>
  
   section {
      width:1000px;
      margin:auto;
      font-family: sans-serif;
   }
   
   section tr {
      height:100px;
      margin:auto;
   
   }
  section input[type=text] {
      width:700px;
      height:30px;
  }
  section textarea {
      width:370px;
      height:100px;
  }
  section #title {
      font-size:20px;
  }

  section input[type=submit]{
		width:370px;
		height:39px;
		background:#2ac1bc;
		border:1px solid #2ac1bc;
		color:white;
		font-size:16px;
		font-weight:900;
	}
	
 section #sec {
   color:grey;
   font-size:12px;
 }	
 
 section #menu2 {
   font-size:13px;
 }

	
 </style>
 <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
 <script>
   var star_cnt=0;
   function chgstar(n)
   {
	   // class="star"의  0부터 n까지의 그림을 노란색그림 => star1.png
	   for(i=0;i<=n;i++)
	   {
		   document.getElementsByClassName("star")[i].src="../resources/img/star2.png";
	   }	   
	   
	   // class="star"의 선택된 n인덱스 다음부터 끝까지는 회색그림 => star2.png
	   for(i=n+1;i<5;i++)
	   {
		   document.getElementsByClassName("star")[i].src="../resources/img/star1.png";
	   }
	   
	   star_cnt=n+1;
	  
	   document.rform.star.value=star_cnt;
	   //alert(document.rform.star.value);
	    
   }
   
   function check()
   {
	   if(star_cnt==0)
	   {
		   alert("별점을 선택하세요");
		   return false;
	   }	   
	   else
	   {
		   return true;
	   }	   
   }
   
   $(document).on("change", ".file-input", function(){
	   
	    $filename = $(this).val();

	    if($filename == "")
	      $filename = "파일을 선택해주세요.";

	    $(".filename").text($filename);

	  })
   
   
   </script>
   <style> /*파일 */
   .box-file-input label{
  display: inline-block;
    padding: 10px 15px;
    vertical-align: middle;
    cursor: pointer;
    height: 20px;
    width:340px;
    background:white;
	border:1px solid #2ac1bc;
	color:#2ac1bc;
	font-size:16px;
    margin-left: 10px;
}



.box-file-input .file-input{
  display:none;
}

.box-file-input .filename{
     display: inline-block;
    height: 20px;
    padding: 10 10px;
    vertical-align: middle;
    border: 1px solid #dddddd;
    width: 360px;
    color: #999999;
    font-size: 13px;
    align:left;
}


   </style>
</head>
<body>
  <section>
    <form name="rform" method="post" action="update_ok" onsubmit="return check()"  enctype="multipart/form-data">
     <c:forEach items="${tmap}" var="map">
     <input type="hidden" name="fcode" value="${map.fcode}">
     <input type="hidden" name="star">
     <input type="hidden" name="guid" value="${map.guid}">
     <input type="hidden" name="jumuncode" value="${map.jumuncode}">
     <table width="1000" align="center">
       <div align="center" style="height:120px;"><h1>리뷰쓰기</h1></div>
       
       <tr>
         <td align="center"><img src="../resources/food/${map.fimg}" width="70"><p>
            ${map.shop}<p>
           <img src="../resources/img/star1.png" onclick="chgstar(0)" class="star">
           <img src="../resources/img/star1.png" onclick="chgstar(1)" class="star">
           <img src="../resources/img/star1.png" onclick="chgstar(2)" class="star">
           <img src="../resources/img/star1.png" onclick="chgstar(3)" class="star">
           <img src="../resources/img/star1.png" onclick="chgstar(4)" class="star">
          </td> 
       </tr>
      
      
      <tr class="box-file-input">
      <td align="center">
      <label>
       <img src="../resources/img/camera.png" style="height:15px;" width="15px;"> 사진 첨부하기
       <input type="file" name="ev_display" class="file-input">
      </label>
      <p>
      <span class="filename">파일을 선택해주세요.</span>
       <td>
      </tr>
      
      <tr>
        <td align="center"> <textarea cols="40" rows="5" name="content" placeholder="음식의 맛, 양, 포장 상태 등 음식에 대한 솔직한 리뷰를 남겨주세요"></textarea> <p>
         <span id="sec"><input type="checkbox">사장님만 보이게</span>
        </td>
      </tr>
      
      <tr>
        <td align="center"><b>추천하는 메뉴가 있나요?</b><p>
        <span id="rec"> 
           <b id="menu2">${map.menu2}</b>
				<img class="img1" style="cursor:pointer;" src="../resources/img/down.jpg" width="32" valign="top">
				<img class="img2" style="cursor:pointer;" src="../resources/img/up.jpg" width="32" valign="top">
		  <p>
     
        </span>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <input type="submit" value="완료">
        </td>
      </tr>
    </table>
    </c:forEach>
  </form>
   <section>
   <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
   <script>
   $(document).on().ready(function(){
       $(".img2").hide();

       a1=$(".img1");
       a2=$(".img2");
       /*img1을 클릭했을 때 img2를 보여줌*/
       $(".img1").click(function(){
    	   var n=a1.index(this);
 
           $(".img1").eq(n).hide();
           $(".img2").eq(n).show();
       });

       /*img2를 클릭했을 때 img1을 보여줌*/
       $(".img2").click(function(){
    	   var n=a2.index(this);
 
           $(".img1").eq(n).show();
           $(".img2").eq(n).hide();
       });
       
   
   });
   </script>
</body>
</html>