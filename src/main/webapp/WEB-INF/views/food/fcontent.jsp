<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style>
	@font-face {
		font-family: 'BMDOHYEON';
		src:
			url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff')
			format('woff');
		font-weight: normal;
		font-style: normal;
	}
	
	section {
		width: 1000px;
		height: 4000px;
		margin: auto;
		font-family: sans-serif;
	}
	
	section a {
		color: black;
		text-decoration:none;
	}
	/* section div {
			margin-top: 30px;
		} */
	section #tab {
			/* border:1px solid red; */
			padding-left:7px;
			width:993px;
			height:300px;
			position:relative;
			display:inline-block;
	}
	
	section #subtab {
		padding-left: 2px;
		position: absolute;
		/* background:white; */
	}
	
	section #tab #subtab li {
			list-style-type:none;
			float:left;
			margin-left:20px;
			margin-top:20px;
			padding-top:15px;
			width:140px;
			height:35px;
			/* border:1px solid #2ac1bc; */
			box-shadow:0px 3px 6px #ccc;
			text-align:center;
			font-size:16px;
			color:black;
			text-decoration:none;
			font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
	
	section #tab #subtab li:hover {
			background:#EAEAEA;
		}
	
	section #title {
		width: 1000px;
		/* height: 500px; */
		margin: auto;
	}
	
	section #title>#top1 {
		width: 400px;
		/* height: 400px; */
		margin: auto;
		/* background: #eee; */
		/* border: 1px solid black; */
	}
	
	section #title>#top2 {
		width: 1000px;
		height: 380px;
		margin: auto;
		position: relative;
		/* background: #abcdef; */
		text-align: center;
		font-size: 25px;
		padding-top: 10px;
	}
	
	section #pform {
		font-weight: 900;
	}
	
	section #content {
		width: 1000px;
		height: 600px;
		margin: auto;
		/* background:yellow; */
		margin-top: 40px;
	}
	
	section #delivery {
		margin-left: 20px;
		height: 200px;
		text-align: left;
		/* background: red; */
		font-size: 20px;
		font-weight: 500;
		padding-top: 20px;
	}
	
	section #takeout {
		margin-left: 20px;
		height: 400px;
		text-align: left;
		/* background: red; */
		font-size: 20px;
		font-weight: 500;
		padding-top: 20px;
	}
	
	section #btn {
		margin-top: 0px;
		font-size: 14px;
	}
	
	/* pcontent 내 메뉴 */
	section #pmenu {
		width: 1000px;
		height: 50px;
		margin: auto;
	}
	
	section #pmenu #pul {
		padding-left: 0px;
		/* background: yellow; */
	}
	
	section #pmenu #pul #pli1 {
		float: left;
		list-style-type: none;
		width: 500px;
		height: 50px;
		border-bottom: 3px solid black;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		background: white;
		font-weight: 900;
		color: black;
		cursor: pointer;
	}
	
	section #pmenu #pul #pli2 {
		float: left;
		list-style-type: none;
		width: 500px;
		height: 50px;
		border-bottom: 3px solid #ccc;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		color: #ccc;
		background: white;
		cursor: pointer;
	}
	
	section #pmenu2 {
		width: 1000px;
		height: 50px;
		margin: auto;
		margin-top: 500px;
		/* border:1px solid blue; */
	}
	
	section #pmenu2 #pul2 {
		padding-left: 0px;
		background: yellow;
		/* border:1px solid blue; */
	}
	
	section #pmenu2 #pul2 #pli3 {
		float: left;
		list-style-type: none;
		width: 333px;
		height: 50px;
		border-bottom: 3px solid black;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		background: white;
		font-weight: 900;
		color: black;
	}
	
	section #pmenu2 #pul2 #pli4 {
		float: left;
		list-style-type: none;
		width: 333px;
		height: 50px;
		border-bottom: 3px solid #ccc;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		color: #ccc;
		background: white;
	}
	
	section #pmenu2 #pul2 #pli5 {
		float: left;
		list-style-type: none;
		width: 333px;
		height: 50px;
		border-bottom: 3px solid #ccc;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		color: #ccc;
		background: white;
	}
	
	section #menu, #info, #review {
		width: 1000px;
		height: 500px;
		/* border:1px solid red; */
	}
	
	section #takeout, #info, #reivew {
		visibility: hidden;
	}
	
	#pmenu2 #pul2 li a {
		font-size: 26px;
		color: #ccc;
		font-weight: 500;
	}
	
	#pmenu2 #pul2 li.on a {
		color: black;
		font-weight: bold;
	}
	
	#pmenu2 #pul2 li.on {
		border-bottom: 3px solid black;
	}
	
	#pmenu2 .tabBox {
		margin-top: 35px;
		display: none;
		/* border:1px solid black;  */
	}
	
	#pmenu2 .tabBox li {
		list-style-type: none;
	}
	
	#pmenu2 .tabBox.on {
		display: block;
	}
	
	#pmenu2a .tabBox p {
		font-size: 14px;
		color: #555;
	}
	
	#pmenu2 .tabBox h3 {
		margin-bottom: 20px;
	}
	
	section .menu, .info, .review {
		text-align: left;
	}
	
	section #mul, #mul2, #mul3, #mul4, #mul5 {
		/* border:1px solid blue; */
		height: 200px;
		cursor: pointer;
	}
	
	section #mli, #mli2, #mli3, #mli4, #mli5 {
		/* border:1px solid red; */
		display: inline-block;
		padding-top: 20px;
	}
	
	section #mli_ex, #mli2_ex, #mli3_ex, #mli4_ex, #mli5_ex {
		/* background:yellow; */
		width: 600px;
	}
	
	section #mul:hover, #mul2:hover, #mul3:hover, #mul4:hover, #mul5:hover {
		background: white;
		box-shadow: 0px 3px 6px #ccc;
	}
	
	section #infoli {
		display: inline-block;
		/* border:1px solid red; */
		width: 200px;
		text-align: left;
	}
	
	section #infoli2 {
		display: inline-block;
		/* border:1px solid blue; */
		width: 700px;
		text-align: left;
	}
	
	section #boss {
		position: relative;
		/*border:1px solid red;*/ 
		display: inline-block;
		margin-top: 150px;
	}
	
	section #boss_one {
		position: absolute;
		display: inline-block;
		/*border:1px solid blue;*/
		margin-left: 10px;
		margin-top: 185px;
	}
	
	section #cart_move {
		position: absolute;
		left: 330px;
		top: 1000px; 
		width: 350px;
		height: 40px;
		font-size: 20px;
		border: 1px solid black;
		text-align: center;
		background: black;
		color:white;
		border-radius:5px;
		padding-top:10px;
		visibility: hidden;
	}
	
	section #orderok {
		width:1000px;
		height:70px;
		padding-top:30px;
		margin-top:50px;
		text-align:center;
		border-top:1px solid #ccc;
		font-size:24px;
	}
	
	section #orderno {
		width:1000px;
		height:100px;
		padding-top:30px;
		margin-top:50px;
		text-align:center;
		border-top:1px solid #ccc;
		font-size:20px;
	}
	
	section #cartbtn {
		width:1000px;
		margin-top:50px;
		margin:auto;
		text-align:center;
	}
	
	section #btn2 {
		display: inline-block;
		width: 600px;
		height: 70px;
		font-size:30px;
		border: 1px solid #2ac1bc;
		background:#2ac1bc; 
		color:white;
		font-weight:900;
		border-radius:5px;
		cursor:pointer;
	}
	
	
</style>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	function delivery(){
		document.getElementById("delivery").style.visibility="visible";
		document.getElementById("pli1").style.fontWeight="900";
		document.getElementById("pli1").style.color="black";
		/* document.getElementById("pmenu2").style.marginTop="0px"; */
		document.getElementById("pli1").style.borderBottom="3px solid black";
		document.getElementById("pli2").style.borderBottom="3px solid #ccc";
		document.getElementById("pli2").style.color="#ccc";
		document.getElementById("pli2").style.fontWeight="500";
		document.getElementById("takeout").style.visibility="hidden";
	}
	
	function takeout(){
		document.getElementById("takeout").style.visibility="visible";
		document.getElementById("pli2").style.fontWeight="900";
		document.getElementById("pli2").style.color="black";
		/* document.getElementById("pmenu2").style.marginTop="500px"; */
		document.getElementById("pli2").style.borderBottom="3px solid black";
		document.getElementById("pli1").style.borderBottom="3px solid #ccc";
		document.getElementById("pli1").style.color="#ccc";
		document.getElementById("pli1").style.fontWeight="500";
		document.getElementById("delivery").style.visibility="hidden";
	}
	
	function menu(){
		document.getElementById("pli3").style.borderBottom="3px solid black";
		document.getElementById("pli4").style.borderBottom="3px solid #ccc";
		document.getElementById("pli5").style.borderBottom="3px solid #ccc";
		document.getElementById("pli3").style.fontWeight="900";
		document.getElementById("pli3").style.color="black";
		document.getElementById("pli4").style.color="#ccc";
		document.getElementById("pli4").style.fontWeight="500";
		document.getElementById("pli5").style.color="#ccc";
		document.getElementById("pli5").style.fontWeight="500";
	}
	
	function info(){
		document.getElementById("pli4").style.borderBottom="3px solid black";
		document.getElementById("pli3").style.borderBottom="3px solid #ccc";
		document.getElementById("pli5").style.borderBottom="3px solid #ccc";
		document.getElementById("pli4").style.fontWeight="900";
		document.getElementById("pli4").style.color="black";
		document.getElementById("pli3").style.color="#ccc";
		document.getElementById("pli3").style.fontWeight="500";
		document.getElementById("pli5").style.color="#ccc";
		document.getElementById("pli5").style.fontWeight="500";
	}
	
	function review(){
		document.getElementById("pli5").style.borderBottom="3px solid black";
		document.getElementById("pli3").style.borderBottom="3px solid #ccc";
		document.getElementById("pli4").style.borderBottom="3px solid #ccc";
		document.getElementById("pli5").style.fontWeight="900";
		document.getElementById("pli5").style.color="black";
		document.getElementById("pli3").style.color="#ccc";
		document.getElementById("pli3").style.fontWeight="500";
		document.getElementById("pli4").style.color="#ccc";
		document.getElementById("pli4").style.fontWeight="500";
	}
	
	$(document).ready(function(){
		$("#pmenu2 #pul2 li a").on("click", function(){
			const num = $("#pmenu2 #pul2 li a").index($(this));
			$("#pmenu2 #pul2 li").removeClass("on");
			$("#pmenu2 .tabBox").removeClass("on");
			$('#pmenu2 #pul2 li:eq('+num+')').addClass("on");
			$('#pmenu2 .tabBox:eq('+num+')').addClass("on");
		});
	});
	
	function wish(my){
		var ck;
		if(my.src.indexOf("w1.png") == -1){
			ck = 1;
		}else{
			ck = 2;
		}
		
		/* 로그인 한 상태 */
		<c:if test="${ userid != null }">
			<c:set var="chk" value="true"/>
		</c:if>
		/* 로그인 안 한 상태 */
		<c:if test="${ userid == null }">
			<c:set var="chk" value="false"/>
		</c:if>
			
		if(${chk}){
			var chk = new XMLHttpRequest();
	  		chk.onload = function(){
	  			// alert(chk.responseText);
	  			if(chk.responseText == "0"){
	  				if(ck == 1) // 삭제하고 왔으면
	  					my.src = "../resources/img/w1.png";
	  				else
	  					my.src = "../resources/img/w2.png";
	  			}else{
	  				alert("예상하지 않은 오류가 발생하였습니다.");
	  			}	
	  		}
	  		chk.open("get", "wish_add?fcode=${ fvo.fcode }&ck="+ck);
	  		chk.send();
		}else{
				location="../login/login";
		}
	}
	
	var url,title,w,h; // window.open()에 들어갈 인자값을 변수로 선언
    function menu_detail(url,title,w,h) { // popUrl이라는 함수를 만들고, 들어갈 매개변수도 지정
	 
		<c:if test="${fcodenum!=0}">
			if(confirm("장바구니에는 같은 가게의 메뉴만 담을 수 있습니다.\n선택하신 메뉴를 장바구니에 담을 경우 이전에 담은 메뉴가 삭제됩니다.")) {
				var chk=new XMLHttpRequest();
					chk.onload=function() {
					if(chk.responseText=="0")
						open(url, title, ' width='+w+', height='+h+' ');
					}
           
           		chk.open("get","cartAllDel");
           		chk.send();
	     	}
        </c:if>
		
        <c:if test="${fcodenum==0}">
			open(url, title, ' width='+w+', height='+h+' ');
        </c:if>
 	}
	
    var proprice = [${proprice}];
	
  	window.onload=function(){
		var menu = document.getElementsByClassName("menu");
		var len = menu.length; // 메뉴의 개수
		
		var chongprice = 0;
		var totalmenu = "";
		var totalsu = "";
		for(i=0; i<len; i++){
			if(menu[i]){ 
				var su = document.getElementsByClassName("su")[i].value;
				// 총 메뉴가격 food.price
				chongprice = chongprice + (proprice[i]);
				
				// 메뉴 추가
				totalmenu = totalmenu + document.getElementsByClassName("menu")[i].value + ",";
				
				// 메뉴수량 추가
				totalsu = totalsu + document.getElementsByClassName("su")[i].value + ",";
			}
		}

		// 체크된 상품코드와 수량을 form 태그와에 전달
		//document.gform.menu.value = totalmenu;
		//document.gform.su.value = totalsu;
		
		
		// 금액에 콤마 넣기
		chongprice = new Intl.NumberFormat().format(chongprice);
		
		// 문서에 출력
		document.getElementById("chongprice").innerText = chongprice + "원";
	}
</script>
</head>
<body>
	<section>
	<span id="tab">
		<ul id="subtab">
			<li><a href="../food/flist">검색</a></li>
			<li><a href="../food/menuall">전체보기</a></li>
			<li><a href="../food/menuone">1인분</a></li>
			<li><a href="../food/flist?fcode=f01">한식</a></li>
			<li><a href="../food/flist?fcode=f02">분식</a></li>
			<li><a href="../food/flist?fcode=f03">카페ㆍ디저트</a></li>
			<li><a href="../food/flist?fcode=f04">돈까스ㆍ회ㆍ일식</a></li>
			<li><a href="../food/flist?fcode=f05">치킨</a></li>
			<li><a href="../food/flist?fcode=f06">피자</a></li>
			<li><a href="../food/flist?fcode=f07">아시안ㆍ양식</a></li>
			<li><a href="../food/flist?fcode=f08">중국집</a></li>
			<li><a href="../food/flist?fcode=f09">족발ㆍ보쌈</a></li>
			<li><a href="../food/flist?fcode=f10">야식</a></li>
			<li><a href="../food/flist?fcode=f11">찜ㆍ탕</a></li>
			<li><a href="../food/flist?fcode=f12">도시락</a></li>
			<li><a href="../food/flist?fcode=f13">패스트푸드</a></li>
			<li><a href="../food/franchise">프랜차이즈</a></li>
			<li><a href="../food/goodtaste">맛집랭킹</a></li>
		</ul>
	</span>
	<div id="title">
		<div id="top1">
			<img src="../resources/food/${ fvo.fimg }" width="400">
		</div>
		<div id="top2">
			<form name="pform" id="pform" method="post" action="gumae">
				<div id="shop" style="font-size:26px;">${ fvo.shop }
					<span id="btn" style="clear:both;"> <!-- clear:both; float 기능을 해제 -->
						<c:if test="${ wcnt == 0 || wcnt == null }">
							<img style="cursor:pointer;" src="../resources/img/w1.png" width="32" valign="top" onclick="wish(this)">
						</c:if>
						<c:if test="${ wcnt != 0 && wcnt != null }">
							<img style="cursor:pointer;" src="../resources/img/w2.png" width="32" valign="top" onclick="wish(this)">
						</c:if>
					</span>
				</div>
				<c:set var="ss" value="3" />
				<div style="margin-top: 10px;">
					<c:forEach begin="1" end="${ fvo.star }">
						<img src="../resources/img/star2.png" width="30">
					</c:forEach>
					<c:forEach begin="1" end="${ 5-fvo.star }">
						<img src="../resources/img/star1.png" width="30">
					</c:forEach>
					${ fvo.star }.0
				</div>
			</form>

			<div id="pmenu">
				<ul id="pul">
					<li id="pli1" onclick="delivery()">배달주문</li>
					<li id="pli2" onclick="takeout()">포장/방문주문</li>
				</ul>
			</div>

			<table id="delivery" width="480" align="left">
				<tr>
					<td>최소주문금액</td>
					<td><fmt:formatNumber value="${ fvo.minorder }"
							pattern="#,###" type="number" />원</td>
				</tr>
				<tr>
					<td>결제방법</td>
					<td>바로결제, 만나서결제</td>
				</tr>
				<tr>
					<td>배달시간</td>
					<td>${ fvo.baetime }분 소요 예상</td>
				</tr>
				<tr>
					<td>배달팁</td>
					<td><fmt:formatNumber value="${ fvo.baeprice }"
							pattern="#,###" type="number" />원</td>
				</tr>
			</table>

			<table id="takeout" width="480" align="left">
				<tr>
					<td width="150">최소주문금액</td>
					<td>없음</td>
				</tr>
				<tr>
					<td>이용방법</td>
					<td>포장</td>
				</tr>
				<tr>
					<td>픽업시간</td>
					<td>10~20분 소요 예상</td>
				</tr>
				<tr>
					<td>위치안내</td>
					<td>
						<span>${ fvo.juso }</span>
						<!-- 카카오맵 시작 -->
						<div id="map" style="width:100%;height:250px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=52224ab5b67d6be2560f101124a2f78b&libraries=services"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							    mapOption = {
							        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							        level: 2 // 지도의 확대 레벨
							    };  
							
							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();
							
							// 주소로 좌표를 검색합니다
							geocoder.addressSearch('${ fvo.juso }', function(result, status) {
							
							    // 정상적으로 검색이 완료됐으면 
							     if (status === kakao.maps.services.Status.OK) {
							
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							
							        // 결과값으로 받은 위치를 마커로 표시합니다
							        var marker = new kakao.maps.Marker({
							            map: map,
							            position: coords
							        });
							
							        // 인포윈도우로 장소에 대한 설명을 표시합니다
							        var infowindow = new kakao.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;">가게위치</div>'
							        });
							        infowindow.open(map, marker);
							
							        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							        map.setCenter(coords);
							    } 
							});
						</script>
					</td>
				</tr>
				<tr>
					<td>결제방법</td>
					<td>바로결제</td>
				</tr>
			</table>

			<div id="pmenu2">
				<ul id="pul2">
					<li id="pli3" class="on" onclick="menu()"><a href="#!"><span>메뉴</span></a></li>
					<li id="pli4" onclick="info()"><a href="#!"><span>정보</span></a></li>
					<li id="pli5" onclick="review()"><a href="#!"><span>리뷰</span></a></li>
				</ul>
				<div class="tabBox on">
				<div class="menu">
					<h3 style="text-align:center;padding-top:150px;height:100px;">대표메뉴</h3>
					<div id="cart_move">장바구니에 메뉴를 추가했습니다.</div>
					<ul id="mul" onclick="menu_detail('../excludes/menu_put?m1=${ fvo.m1 }', '', '470', '530')"">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m1_img }" width="215" height="140"></p></li>
						<li id="mli"><b>${ fvo.m1 }</b></li> <br>
						<li id="mli_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m1_ex }</li> <br>
						<li id="mli"><fmt:formatNumber value="${ fvo.m1_price }" pattern="#,###" type="number" />원</li> 
					</ul> 
					<ul id="mul2" onclick="menu_detail('../excludes/menu_put2?m2=${ fvo.m2 }', '', '470', '530')">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m2_img }" width="215" height="140"></p></li>
						<li id="mli2"><b>${ fvo.m2 }</b></li> <br>
						<li id="mli2_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m2_ex }</li> <br>
						<li id="mli2"><fmt:formatNumber value="${ fvo.m2_price }" pattern="#,###" type="number" />원</li>
					</ul>
					<ul id="mul3" onclick="menu_detail('../excludes/menu_put3?m3=${ fvo.m3 }', '', '470', '530')">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m3_img }" width="215" height="140"></p></li>
						<li id="mli3"><b>${ fvo.m3 }</b></li> <br>
						<li id="mli3_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m3_ex }</li> <br>
						<li id="mli3"><fmt:formatNumber value="${ fvo.m3_price }" pattern="#,###" type="number" />원</li>
					</ul>
					<ul id="mul4" onclick="menu_detail('../excludes/menu_put4?m4=${ fvo.m4 }', '', '470', '530')">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m4_img }" width="215" height="140"></p></li>
						<li id="mli4"><b>${ fvo.m4 }</b></li> <br>
						<li id="mli4_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m4_ex }</li> <br>
						<li id="mli4"><fmt:formatNumber value="${ fvo.m4_price }" pattern="#,###" type="number" />원</li>
					</ul>
					<ul id="mul5" onclick="menu_detail('../excludes/menu_put5?m5=${ fvo.m5 }', '', '470', '530')">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m5_img }" width="215" height="140"></p></li>
						<li id="mli5"><b>${ fvo.m5 }</b></li> <br>
						<li id="mli5_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m5_ex }</li> <br>
						<li id="mli5"><fmt:formatNumber value="${ fvo.m5_price }" pattern="#,###" type="number" />원</li>
					</ul>
				   	<c:if test="${ ccnt != 0 }">
						<c:if test="${ fvo.minorder <= chongp }"> 
							<div id="orderok" style="color:blue;">배달이 가능해요</div>
						</c:if> 
						<c:if test="${ fvo.minorder > chongp }">
							<div id="orderno">
								<div style="font-size:24px;"><fmt:formatNumber value="${ fvo.minorder-chongp }" pattern="#,###" type="number" />원 더 담으면 <span style="color:blue;">배달 가능!</span></div> <p>
								<span style="color:#8C8C8C;">배달 최소주문금액 <fmt:formatNumber value="${ fvo.minorder }" pattern="#,###" type="number" />원</span>
							</div>
						</c:if>
						<c:if test="${ chongp > 0 }"> 
							<div id="cartbtn">
								<input type="button" id="btn2" onclick="location='../mybaemin/cartview'" value="${ chongs }             장바구니 보기        <fmt:formatNumber value="${ chongp }" pattern="#,###" type="number" />원">
							</div>	
						</c:if>
					</c:if>
				</div>
				</div>
				<div class="tabBox">
					<div class="info">
						<c:if test="${ fvo.shop_sogae } != null">
						<h3 style=padding-top:150px;height:50px;">가게소개</h3>
						<ul style="padding-left:0px;">
							<li><p>${ fn:replace(fvo.shop_sogae, replaceChar, "<br/>") }</p></li>
						</ul>
						</c:if>
						<h3 style=padding-top:150px;height:50px;">영업정보</h3>
						<ul style="padding-left:0px;">
							<li id="infoli">상호명</li>
							<li id="infoli2">${ fvo.shop }</li> <br>
							<li id="infoli">운영시간</li>
							<li id="infoli2">${ fvo.hours }</li> <br>
							<li id="infoli">휴무일</li>
							<li id="infoli2">${ fvo.holiday }</li> <br>
							<li id="infoli">전화번호</li>
							<li id="infoli2">${ fvo.phone }</li> <br>
							<li id="infoli">배달지역</li>
							<li id="infoli2" width="200">${ fvo.area }</li>
						</ul>
						<h3 style=padding-top:150px;height:50px;">안내 및 혜택</h3>
						<ul style="padding-left:0px;">
							<li><p>${ fn:replace(fvo.benefit, replaceChar, "<br/>") }</p></li>
						</ul>
						<h3 style=padding-top:150px;height:50px;">가게 통계</h3>
						<ul style="padding-left:0px;">
							<li id="infoli">최근 주문수</li>
							<li id="infoli2">${ fvo.recent_orders }+</li> <br>
							<li id="infoli">전체 리뷰수</li>
							<li id="infoli2">${ fvo.total_orders }+</li> <br>
							<li id="infoli">찜</li>
							<li id="infoli2">${ fvo.wish }</li>
						</ul>
						<h3 style=padding-top:150px;height:50px;">사업자 정보</h3>
						<ul style="padding-left:0px;">
							<li id="infoli">대표자명</li>
							<li id="infoli2">${ fvo.boss }</li> <br>
							<li id="infoli">상호명</li>
							<li id="infoli2">${ fvo.shop }</li> <br>
							<li id="infoli">사업자주소</li>
							<li id="infoli2">${ fvo.juso }</li> <br>
							<li id="infoli">사업자등록번호</li>
							<li id="infoli2">${ fvo.regi_number }</li> <br>
						</ul>
					</div>
				</div>
				<div class="tabBox">
					<div class="review">
						<h3 style=padding-top:150px;height:50px;">사장님 공지</h3>
						<ul style="padding-left:0px;">
							<li><p>${ fn:replace(fvo.boss_gongji, replaceChar, "<br/>") }</p></li>
						</ul>
						<c:if test="${ fvo.boss_one != ''}">
							<div id="bb"><img id="boss" src="../resources/img/boss.PNG" width="100" height="90"><h3 id="boss_one">사장님 한마디</h3></div>
							<ul style="padding-left:0px;">
								<li><p>${ fn:replace(fvo.boss_one, replaceChar, "<br/>") }</p></li>
							</ul>
						</c:if>
						
						
						<h3 style=padding-top:150px;height:50px;">리뷰</h3> <!-- 리뷰 있을 때 -->
  				         <c:if test="${ rlist.size() == 0}">  <!-- 리뷰 없을 때 -->
  				          <img id="her" src="../resources/img/reviewher.png">
  				           <div style="color:#747474;font-size:22px;" align="center"> 리뷰 내역이 없어요 </div>
  				         </c:if>
						<ul style="padding-left:0px;">
    				       <c:forEach items="${rlist}" var="rvo">
  				        
								
						<!-- review -->
						
                <c:if test="${rvo.fname.length() != null}">  <!-- 사진 있을 때 -->
                  <input type="hidden" name="id" value="${rvo.id}">
                <table width="1000" align="center" class="review">
               <tr>
                <td>
                <img src="../resources/mybaemin/profile.png" width="100">
                <span id="user">${rvo.userid}</span>
                </td>
               </tr>
           
               <tr>
                 <td>
                  <c:forEach begin="1" end="${rvo.star}">
                    <img src="../resources/img/star2.png" width="30">
                  </c:forEach>
                  <c:forEach begin="1" end="${5-rvo.star}">
                    <img src="../resources/img/star1.png" width="30">
                  </c:forEach>
                    &nbsp;&nbsp; <span id="date"> ${rvo.writeday} </span>
                 </td>
              </tr>
           
            <tr>
             <td align="left">
               <img src="../resources/pro/${rvo.fname}" width="500" style="padding:15px;">
             </td>
           </tr>
           
           <tr height="100">
             <td><div style="overflow:auto;">${ fn:replace(rvo.content, replaceChar, "<br/>") }</div></td>
           </tr>
           
            
           <tr height="50">
             <td id="menuup"> ${rvo.menu2}</td>
           </tr>
           
           
           <tr>
             <td>
             <c:if test="${rvo.state == 0 }">  <!-- 사장 댓글 없을 때 -->
             </c:if>
             <c:if test="${rvo.state != 0 }">  <!-- 사장 댓글 있을 때 -->
             <img src="../resources/img/boss.PNG" width="90" id="bs"> 
              <div class="speech-bubble">
                                사장님 ${rvo.writeday2}<p>
              ${ fn:replace(rvo.content2, replaceChar, "<br/>") } 
              </div>
              </c:if>
              </td>
           </tr>
              </table>
              </c:if> 
             
             
             
               <c:if test="${rvo.fname.length() == null}">  <!-- 사진 있을 때 -->
                  <input type="hidden" name="id" value="${rvo.id}">
                <table width="1000" align="center" class="review">
               <tr>
                <td>
                <img src="../resources/mybaemin/profile.png" width="100">
                <span id="user">${rvo.userid}</span>
                </td>
               </tr>
           
               <tr>
                 <td>
                  <c:forEach begin="1" end="${rvo.star}">
                    <img src="../resources/img/star2.png" width="30">
                  </c:forEach>
                  <c:forEach begin="1" end="${5-rvo.star}">
                    <img src="../resources/img/star1.png" width="30">
                  </c:forEach>
                    &nbsp;&nbsp; <span id="date"> ${rvo.writeday} </span>
                 </td>
              </tr>
           
            
           
           <tr height="100">
             <td><div style="overflow:auto;">${ fn:replace(rvo.content, replaceChar, "<br/>") }</div></td>
           </tr>
           
            
           <tr height="50">
             <td id="menuup"> ${rvo.menu2}</td>
           </tr>
           
           
           <tr>
             <td>
             <c:if test="${rvo.state == 0 }">  <!-- 사장 댓글 없을 때 -->
             </c:if>
             <c:if test="${rvo.state != 0 }">  <!-- 사장 댓글 있을 때 -->
             <img src="../resources/img/boss.PNG" width="90" id="bs"> 
              <div class="speech-bubble">
                                사장님 ${rvo.writeday2}<p>
              ${ fn:replace(rvo.content2, replaceChar, "<br/>") } 
              </div>
              </c:if>
              </td>
           </tr>
              </table>
              </c:if> 
             
        </c:forEach>

					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
<style>
/*리뷰 스타일*/
table.review {
	margin-top: 50px;
	border-spacing: 0px; /* 셀과 셀의 공간 */
	font-size: 18px;
}

section.review tr {
	padding-top: 20px;
	padding-bottom: 20px;
}


section #user {
	position: absolute;
	display: inline-block;
	padding-top: 35px;
}

section #date {
	display: inline-block;
	vertical-align: middle;
	/* border:1px solid red; */
	margin-top: 5px;
	position: absolute;
	color: #747474;
	/* padding-top:15px; */
	/* padding-bottom:10px; */
	/* padding-left:10px; */
}

section #her {
	margin: auto;
	display: block;
	padding: 30px;
	width: 500px;
}

section #menuup {
	width: auto;
	float: left;
	border-radius: 15px;
	background: #F6F6F6;
	border: 1px solid #F6F6F6;
	margin-right: 10px;
	margin-top: 15px;
	font-size: 15px;
	text-align: center;
	cursor: pointer;
}

section #bs {
	position: relative;
	display: inline-block;
}

.speech-bubble {
	position: relative;
	background: #F6F6F6;
	border-radius: .4em;
	width: 500px;
	padding: 15px;
	left: 100px;
	bottom: 50px;
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
</body>
</html>