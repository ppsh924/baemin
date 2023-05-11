<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
 section{
   width:800px;
   height:2000px;
   margin:auto;
   font-size:20px;
  }
  
  #bb{
  float:right;
  }
  
  #btn{
   width:100px;
   height:50px;
  }
</style>
<script>
  function chg()
  {
	  opener.document.pkc.order.value=document.pkc.order.value;
  }
</script>

<script>
  function hap()
  {
	 
  }
</script>
</head>
<body>
 <section>
  <table align="center">
     <tr align="center">
       <td><h2>메뉴상세</h2></td>
     </tr>
     
     <tr>
       <td>
          <img src="../resources/img/1.jpg" width="800" height="400">
     </tr>
     
     <tr>     
       <td align="center"><h1>[[환상적인 특제소스로 만든]]행복고추장찜닭</h1><p>
                단짠단짠을 좀 아는 당신! 먹으면 중독될 수 있습니다! 대중적인 맛에 환상적인 특제소스를 더해 누구나 맛있어하는 단짠단짠 고추장찜닭이 탄생!</td>
     </tr>
     
     
     <tr>
       <td>가격 <b id="bb">26,900원</b></td>
     </tr>
  </table>
  <hr>
  
  <div>
    <span><b> 메뉴 선택</b> (필수선택)</span><p>
    <input type="radio" name="pasta" value="0"> 뼈  <b id="bb">추가비용없음</b><p> 
    <input type="radio" name="pasta" value="1"> 순살 <b id="bb">추가비용없음</b><p> 
  </div>
  
  <hr>
  
  <div>
    <div><b>사이즈 선택</b>(필수 선택)</div><p> 
    <input type="radio" name="pasta2" value="0">2인(600g) <b id="bb">+3000원</b><p>
    <input type="radio" name="pasta2" value="1">3인(800g) <b id="bb">+6000원</b><p>
    <input type="radio" name="pasta2" value="2">4인(1kg) <b id="bb">+120000원</b><p>
  </div>
  
  <hr>
  
  <div>
    <div><b>추가 선택</b></div><p> 
     <input type="checkbox" name="pasta3" value="0"> 치즈 추가  <b id="bb">+3000원</b><p>
     <input type="checkbox" name="pasta3" value="1"> 납작당면 추가 <b id="bb">+3000원</b><p>
     <input type="checkbox" name="pasta3" value="2"> 비엔나 소시지 추가 <b id="bb">+3000원</b><p>
     <input type="checkbox" name="pasta3" value="3"> 베이컨 추가 <b id="bb">+3000원</b><p>
  </div>
  
  <hr>
  
  <div>
    <div><b>사이드메뉴 선택</b></div><p> 
     <input type="checkbox" name="pasta4" value="0">제주카츠볼 <b id="bb">+3000원</b><p>
     <input type="checkbox" name="pasta4" value="1">밀크피즈볼 <b id="bb">+3000원</b><p>
     <input type="checkbox" name="pasta4" value="2">복불복 치즈볼<b id="bb">+3000원</b><p>
     <input type="checkbox" name="pasta4" value="3">치즈스틱 <b id="bb">+3000원</b><p>
     <input type="checkbox" name="pasta4" value="4">김말이 <b id="bb">+3000원</b><p>
  </div>
  
  <hr>
  <div>
    <div><b>음료 선택</b></div><p> 
  <input type="checkbox" name="pasta5" value="0">콜라 1.25 변경 <b id="bb">+3000원</b><p>
  <input type="checkbox" name="pasta5" value="1">콜라 1.25 추가 <b id="bb">+3000원</b><p>
  </div>
  
  <hr>
  
   <div> 
     <div>총 결제금액<span id="ptot">  <b id="bb">원</b></span></div>
     </div>
  
  <div>
    <div align="center">
    <input type="button" onclick="chg()" name="order" value="주문하기" id="btn">
    </div>
  </div>
 </section>
</body>
</html>