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
    height:1000px;
    margin:auto;
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
 <script type="text/javascript" 
 src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d0e0b38f7dc7bee8fdd2dae956052b1">
 </script>
 <script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
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
	  a1=open("son" , " " ,"width=580,height=600");
  }
  </script>
  
  
  <script> /*주문하기 고정*/

   $(function()
   {
	    $(window).click(function()
	    {
	    	//alert( $(window).scrollTop() );
	    });
	    
	    $(window).scroll(function()
	    {
	    	// scrollTop이 400px보다 크다면 id="top"인 요소를 보이게 한다..
	    	var st=$(window).scrollTop();
	    	
	    	
	    	
	    	if(st>=200)
	        {
	    	 	$("#jumun").css("position","fixed");
	    	 	$("#jumun").css("top","0px");
	        }
	    	else
	    	{
	    		$("#jumun").css("position","relative");
	    	}	
	    	
	    	 
	    });
	    
	    // top이 클릭되면 제일 위로 이동
	    $("#btn").click(function()
	    {    
	    	$(window).scrollTop("0"); // 단위 생략이 가능
	    });
   });
 </script>
 
</head>
   
   <form action="food_ok">
   
  <div id="jumun">
     <div>주문표</div>
     <div>주문표에 담긴 메뉴</div>
     <div>주문하기</div>
  </div>
   
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
    </ul>
  </div>
  <div class="tab-select-outer">
    <select id="tab-select">
      <option value="#tab01">Tab 1</option>
      <option value="#tab02">Tab 2</option>
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

  <div align="center">
    <div>인기메뉴</div>
  </div>


  </div>
   
  </form>


</html>