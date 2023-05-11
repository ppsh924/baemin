<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { 
	 margin:0px;
  }

a {
	text-decoration: none
}

ul {
	width: 1000px;
	margin: auto;
	padding-left:10px;
}

ul li {
	list-style-type: none;
	width: 110px;
	height: 24px;
	display: inline-block;
	text-align: center;
	background: #2ac1bc;
	border: 1px solid #2ac1bc;
	color: white;
	margin-left: 20px;
}

section #bosstop {
	margin: auto;
	display: block;
	padding-bottom: 10px;
	width: 300px;
}

.wrap {
	width: 95%;
	max-width: 1200px;
	margin: 0 auto 30px;
	display: flex;
	flex-wrap: wrap;
}

.tab .box #select {
	background: #30DAD9;
}

/* 상단 메뉴 */
section.tab {
	width: 100%;
	margin-top: 50px;
}

section.tab ul {
	display: flex;
	background: #333333;
}

section.tab ul li {
	width: 100%;
	text-align: center;
	border: 0px;
	font-size: 1rem;
	background: #333333;
	cursor: pointer;
	height: 60px;
	display: flex;
	justify-content: center;
	font-weight:900;
}

section.tab ul li a {
	color: #fff;
	display: block;
	width: 100%;
	height: 100%;
	line-height: 60px;
}

section.tab ul li:hover {
	background: #2ac1bc;
	transition: ease-in-out 0.15s
}
</style>

</head>
<body> <!-- admintop.jsp -->
   
   <div class="wrap">
	  <section class="tab">
        <img src="../resources/img/bosstop.png" onclick="location='../admin/adminmain'" id="bosstop">
	     <ul class="box">
    	 	   <img src="../resources/img/alogo.png" width="100" height="30" style="padding-top:15px;" onclick="location='../main/main'">
    	 	  <li> <a href="../admin/adminmember"> 회원관리 </a></li>
              <li> <a href="../food/food">음식점 등록</a> </li>
              <li> <a href="../admin/adminfood">음식점 수정</a> </li>
              <li> <a href="../admin/adminmtm"> 1:1문의 </a></li>
              <li> <a href="../admin/adminreview"> 상품후기</a> </li>
              <li> <a href="../admin/admingumae"> 구매관련 </a></li>
              <li> <a href="../admin/glist"> 공지사항 </a></li>
		</ul>
	</section>







</div>



   
   
   
   
   
   
   
   