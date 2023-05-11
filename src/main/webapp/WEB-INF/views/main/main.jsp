<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		/* 슬라이드 되는 큰 그림 */
		#mimage {
			width:1000px;
			height:480px;
			margin:auto;
			overflow:hidden;
			background:#2ac1bc;
		}
		
		#msub {
			width:8050px;
			height:400px;
			margin-left:0px;
		}
		
		/* 본문 */
		section {
			width:1000px;
			height:200px;
			margin:auto;
			padding-bottom:100px;
		}
		
		section #first,#second {
			width:1000px;
			height:100px;
			margin:auto;
			padding-left:70px;
		}
		
		nav #main {
			padding-left:0px;
			border:1px solid black;
		}
		
		nav #main > li {
			list-style-type:none;
			display:inline-block;
			width:120px;
			height:40px;
			text-align:center;
			font-size:13px;
			border:1px solid black;
		}
		
		img {
			cursor:pointer;
		}
	</style>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script>
		$(function() {
			move();
			// id가 main인 요소에 마우스가 올라왔을 때
			$("#mimage").mouseover(function(){
				clearInterval(ss);
			});
			$("#mimage").mouseout(function(){
				move();
			});
		});
		
		function move(){
			ss = setInterval(function() {
				$("#msub").animate({
					marginLeft : "-1000px"
				}, 2000, function() {
					$(".img").eq(0).insertAfter($(".img").eq(5));
					$("#msub").css("margin-left", "0px");
				});
			}, 4000);
		}
	</script>
</head>
<body>
	<!-- 슬라이드 되는 큰 그림 -->
	<div id="mimage">
	<div id="msub">
		<img src="../resources/main/1.png" width="1000" height="480" class="img"><img src="../resources/main/2.png" width="1000" height="480" class="img"><img src="../resources/main/3.png" width="1000" height="480" class="img"><img src="../resources/main/4.png" width="1000" height="480" class="img"><img src="../resources/main/5.png" width="1000" height="480" class="img"><img src="../resources/main/6.png" width="1000" height="480" class="img">
	</div>
	</div>
	
	<!-- 본문 -->
	<section>
		<div id="first">
			<img src="../resources/main/food(1).png" onclick="location.href='../food/menuone'" width="100" height="100" class="food">
			<img src="../resources/main/food(3).png" onclick="location.href='../food/flist?fcode=f01'" width="100" height="100" class="food">
			<img src="../resources/main/food(4).png" onclick="location.href='../food/flist?fcode=f02'" width="100" height="100" class="food">
			<img src="../resources/main/food(5).png" onclick="location.href='../food/flist?fcode=f03'" width="100" height="100" class="food">
			<img src="../resources/main/food(6).png" onclick="location.href='../food/flist?fcode=f04'" width="100" height="100" class="food">
			<img src="../resources/main/food(7).png" onclick="location.href='../food/flist?fcode=f05'" width="100" height="100" class="food">
			<img src="../resources/main/food(8).png" onclick="location.href='../food/flist?fcode=f06'" width="100" height="100" class="food">
			<img src="../resources/main/food(9).png" onclick="location.href='../food/flist?fcode=f07'" width="100" height="100" class="food">
		</div>
		<div id="second">
			<img src="../resources/main/food(10).png" onclick="location.href='../food/flist?fcode=f08'" width="100" height="100" class="food">
			<img src="../resources/main/food(11).png" onclick="location.href='../food/flist?fcode=f09'" width="100" height="100" class="food">
			<img src="../resources/main/food(12).png" onclick="location.href='../food/flist?fcode=f10'" width="100" height="100" class="food">
			<img src="../resources/main/food(13).png" onclick="location.href='../food/flist?fcode=f11'" width="100" height="100" class="food">
			<img src="../resources/main/food(14).png" onclick="location.href='../food/flist?fcode=f12'" width="100" height="100" class="food">
			<img src="../resources/main/food(15).png" onclick="location.href='../food/flist?fcode=f13'" width="100" height="100" class="food">
			<img src="../resources/main/food(16).png" onclick="location.href='../food/franchise'" width="100" height="100" class="food">
			<img src="../resources/main/food(17).png" onclick="location.href='../food/goodtaste'" width="100" height="100" class="food">			
		</div>	
	</section> 
</body>
</html>