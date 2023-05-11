<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>



  <style>
  
  section{
    width:2000px;
    margin:auto;
  }
  
  left{
   float:left;
  }
  
   #mimage{
    width:1000px;
    height:300px;
    overflow:hidden;
    margin:auto;
  }
  
  #msub{
    width:7000px;
    height:300px;
    margin-left:0px;
  }
  
  #first{
    width:1000px;
    hegith:50px;
    margin:auto;
  }
  
  #second{
    width:1000px;
    height:50px;
    margin:auto;
    padding-top:20px;
    
  }
  


.tabs {
  max-width: 1000px;
  margin: 0 auto;
  padding: 0 20px;
}
#tab-button {
  display: table;
  table-layout: fixed;
  width: 100%;
  margin: 0;
  padding: 0;
  list-style: none;
}
#tab-button li {
  display: table-cell;
  width: 20%;
}
#tab-button li a {
  display: block;
  padding: .5em;
  background: #eee;
  border: 1px solid #ddd;
  text-align: center;
  color: #000;
  text-decoration: none;
}
#tab-button li:not(:first-child) a {
  border-left: none;
}
#tab-button li a:hover,
#tab-button .is-active a {
  border-bottom-color: transparent;
  background: #fff;
}
.tab-contents {
  padding: .5em 2em 1em;
  border: 1px solid #ddd;
}



.tab-button-outer {
  display: none;
}
.tab-contents {
  margin-top: 20px;
}
@media screen and (min-width: 640px) {
  .tab-button-outer {
    position: relative;
    z-index: 2;
    display: block;
  }
  .tab-select-outer {
    display: none;
  }
  .tab-contents {
    position: relative;
    top: -1px;
    margin-top: 0;
  }


 /*menu*/
 
 .accordion {
 position:absolute;
 left:50%;
 transform:translateX(-50%);
 width:1000px;
 }
 
 input[id*="answer"]{
   display:none;
 }
 
 input[id*="answer"]+ label {
   
   display:block;
   padding:20px;
   border:1px solid #dddddd;
   border-bottom:0;
   font-weight:900;
   background:#f0f0f0;
   color:black;
   cursor:pointer;
   position:relative;
 }
 
 input[id*="answer"] +label em{
   position:absolute;
   top:50%;
   right:10px;
   width:30px;
   height:30px;
   margin-top:-15px;
   display:inline-block;
   background:url('./img/arrow.png') 0 0 no-repeat;
 }
 
 input[id*="answer"] +label+ div{
   max-height:0;
   transition: all .35s;
   overflow:hidden;
   background:white;
   font-size:15px;
 
 } 

 input[id*="answer"] +label+ div p{
   display:inline-block;
 
 }
 input[id*="answer"]:checked + label + div {max-height:1000px;}
 
 /*menu 사진*/
 #pm{float:right;}
 
 /* 기본 구조 */
.wrap {max-width:1000px; margin:50px auto; background:#f8f8f8;}

/* 가로 스크롤 적용 */
.scroll__wrap {
  overflow-x:scroll; 
  white-space:nowrap; 
  font-size:0;
  }
.scroll--element {
 display:inline-block; 
 width:150px; 
 height:inherit;
 border:2px solid #222; 
 background:#fff; 
 font-size:16px; 
 line-height:50px; 
 text-align:center;
 }
 
.scroll--element + .scroll--element {margin-left:15px;}
 
 
 #jumun{
  margin:auto;
  border:1px solid black;
  width:180px;
  height:100px;
  float:right;
 }
 
 #accordion > #left1{
  float:left;
  width:700px;
  background:pink;
 }
 
 #accordion > #right1{
   float:right;
 }
</style>
 
 <script>/*이미지*/
   $(function()
   {
	       move();
	       
		   $("#mimage").mouseover(function()
		   {
			   clearInterval(ss);
		   });
		   $("#mimage").mouseout(function()
		   {
	           move();
		   });
   });
   function move()
   {
	   ss=setInterval(function()
	   {
		   $("#msub").animate(
		   {
			   marginLeft:"-1000px"
		   },2000,function()
		          {
			           $("#msub > img").eq(0).insertAfter( $("#msub > img").eq(4) );
			           $("#msub").css("margin-left","0px");
		          });
	   },4000);
   }
   
	
 </script>
 
 
 <!-- 지도 --> 

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
geocoder.addressSearch('경기도 고양시 일산동구 마두동', function(result, status) {

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
            content: '<div style="width:100px;text-align:center;padding:6px 0;">가게위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});
</script>
 
 <!-- tab --> 
  <script>
  $(function() {
	  var $tabButtonItem = $('#tab-button li'),
	      $tabSelect = $('#tab-select'),
	      $tabContents = $('.tab-contents'),
	      activeClass = 'is-active';

	  $tabButtonItem.first().addClass(activeClass);
	  $tabContents.not(':first').hide();

	  $tabButtonItem.find('a').on('click', function(e) {
	    var target = $(this).attr('href');

	    $tabButtonItem.removeClass(activeClass);
	    $(this).parent().addClass(activeClass);
	    $tabSelect.val(target);
	    $tabContents.hide();
	    $(target).show();
	    e.preventDefault();
	  });

	  $tabSelect.on('change', function() {
	    var target = $(this).val(),
	        targetSelectNum = $(this).prop('selectedIndex');

	    $tabButtonItem.removeClass(activeClass);
	    $tabButtonItem.eq(targetSelectNum).addClass(activeClass);
	    $tabContents.hide();
	    $(target).show();
	  });
	});
  </script>
  
  <script>/*메뉴선택창*/
  function winopen1()
  {
	  //변수 선언시 var을 붙이면 해당 {}내세어만 존재하는 지역변수
	  //var 없이 변수를 생성하면 전역변수가 된다
	  a1=open("son","","width=580,height=600");
  }
  
  function winopen2()
  {
	  //변수 선언시 var을 붙이면 해당 {}내세어만 존재하는 지역변수
	  //var 없이 변수를 생성하면 전역변수가 된다
	  a1=open("son2","","width=580,height=600");
  }
  </script>
  
  
  
</head>
  <section> 
   <form action="food_ok">
   

   <div class="left">
   <div id="top">
    <div id="mimage">
      <div id="msub">
         <img src="../resources/img/1.jpg" width="1000" height="300" class="img">
         <img src="../resources/img/2.jpg" width="1000" height="300" class="img">
         <img src="../resources/img/3.jpg" width="1000" height="300" class="img">
         <img src="../resources/img/4.jpg" width="1000" height="300" class="img">
         <img src="../resources/img/5.jpg" width="1000" height="300" class="img">
      </div>
    </div>
    
    <h1 align="center">도로시 파스타 연정 일산행복점</h1>
    
    <div id="first" align="center">최근 리뷰  1,567 |  최근 사장님 댓글 1,541</div>
    <div id="second" align="center">  
    <img src="../resources/img/ph.jpg" width="20" height="20" class="se"> 전화 &nbsp&nbsp  
    <img src="../resources/img/heart.png" width="20" height="20" class="se"> 913 &nbsp&nbsp 
    <img src="../resources/img/s.png" width="20" height="20" class="se"> 공유  &nbsp&nbsp 
    <img src="../resources/img/pp.png" width="25" height="25" class="se"> 함께주문 
    </div>
    
    <div class="tabs">
  <div class="tab-button-outer">
    <ul id="tab-button">
      <li><a href="#tab01">배달주문</a></li>
      <li><a href="#tab02">포장/방문주문</a></li>
      <li><a href="#tab03">리뷰</a></li>
    </ul>
  </div>
  <div class="tab-select-outer">
    <select id="tab-select">
      <option value="#tab01">Tab 1</option>
      <option value="#tab02">Tab 2</option>
      <option value="#tab03">Tab 3</option>
    </select>
  </div>
  
  <!-- 주문방법 -->
  <div id="tab01" class="tab-contents">
    <p>최소주문금액 &nbsp&nbsp 6000원 </p>
    <p>결제방법 &nbsp&nbsp&nbsp 바로결제, 만나서 결제 </p>
    <p>배달시간 &nbsp&nbsp&nbsp 51~66분 소요 예상 </p>
    <p>배달팁 &nbsp&nbsp&nbsp&nbsp 600~1900원 </p>
    
  </div>
  <div id="tab02" class="tab-contents">
    <p>최소주문금액 &nbsp&nbsp&nbsp&nbsp 없음</p>
    <p>이용방법&nbsp&nbsp&nbsp&nbsp&nbsp 포장</p>
    <p>픽업시간&nbsp&nbsp&nbsp&nbsp&nbsp7~17분 소요 예상</p>
    <p>위치안내 &nbsp&nbsp&nbsp&nbsp&nbsp  <div id="map" style="width:500px;height:400px;"></div> </p>
    <p>결제방법&nbsp&nbsp&nbsp&nbsp&nbsp 바로결제</p>
  </div>
  
  <div id="tab03" class="tab-contents">
    
  </div>
  
  </div>
 



<!-- 추천메뉴 -->

 


<div class="wrap">
  <div class="scroll__wrap">
    <div class="scroll--element">
     <span onclick="winopen1()">
     <img src="../resources/img/1.jpg" width="150" height="100"> <p>파스타</p>     
     </span>
     </div>
     
    <div class="scroll--element"><img src="../resources/img/2.jpg" width="150" height="100"><p>파스타2</p></div>
    <div class="scroll--element"><img src="../resources/img/3.jpg" width="150" height="100"><p>파스타2</p></div>
    <div class="scroll--element"><img src="../resources/img/4.jpg" width="150" height="100"><p>파스타2</p></div>
    <div class="scroll--element"><img src="../resources/img/5.jpg" width="150" height="100"><p>파스타2</p></div>
    <div class="scroll--element"><img src="../resources/img/6.jpg" width="150" height="100"><p>파스타2</p></div>
  </div>
</div>


  <!-- 메뉴들 -->
  <div class="accordion">
     <input type="checkbox" id="answer01">
      <label for="answer01">🏆️인기메뉴<em></em></label>
      <div>
        <div id="left1">
        <span onclick="winopen1()">
          <div><p><b>행복간장찜닭</b></p></div>
         <div> <p>행복한찜닭의 간판메뉴! 행찜만의 특제비법소스로 만들어진 맛있게 매운맛!
                   누구나 맛있어하고 환장하는 누구나 먹으면 행복해하는 간장찜닭!</p></div>
          <div><p>26,900원</p></div>
         </span>
         </div>
          <div id="right1"><img src="../resources/img/1.jpg" width="300" height="160"></div>
        
      </div>
      
     <div>
      <input type="checkbox" id="answer02">
      <label for="answer02">메인메뉴<em></em></label>
       <div>
        <div id="left1">
        <span onclick="winopen2()">
          <div><p><b>행복간장찜닭</b></p></div>
         <div> <p>행복한찜닭의 간판메뉴! 행찜만의 특제비법소스로 만들어진 맛있게 매운맛!
                   누구나 맛있어하고 환장하는 누구나 먹으면 행복해하는 간장찜닭!</p></div>
          <div><p>26,900원</p></div>
         </span>
         </div>
          <div id="right1"><img src="../resources/img/1.jpg" width="300" height="160"></div>
        
      </div>
      
      <input type="checkbox" id="answer03">
      <label for="answer03">사이드 메뉴<em></em></label>
      <div>
      <p>답변</p>
      </div>
      
      <input type="checkbox" id="answer04">
      <label for="answer04">음료 메뉴<em></em></label>
      <div>
      <p>답변</p>
      </div>
     </div> 
  </div>
  </div>
  </div>

</section>

</html>