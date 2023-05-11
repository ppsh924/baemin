<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  section {
    width:400px;
    margin:auto;
  }
  section input {
    width:400px;
    height:50px;
    margin-top:10px;
    font-size:17px;
  }
   
  section input[type=submit] {
    width:408px;
    height:54px;
   
  }
  section input[type=checkbox] {
    width:30px;
    height:20px;
   
  }
  #bb
  {
    margin-top:45px;
  }
 </style>
 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function juso_search()   
{
  new daum.Postcode({
      oncomplete: function(data) {
          if (data.userSelectedType === 'R') {  
              addr = data.roadAddress;
          } else { 
              addr = data.jibunAddress;
          }
   
             document.pkc.juso.value=addr;
                 document.pkc.zip.value=data.zonecode;   // 우편번호
                 document.pkc.juso_etc.focus();
 
      }
  }).open();
}
</script>
</head>
<body>
  <section>
     <form name="pkc" method="post" action="jusoadd_ok">
             
         <div> <input type="text" name="phone" placeholder="전화번호"></div>
         <div> <input type="text" name="zip" placeholder="우편번호" readonly onclick="juso_search()"></div>
         <div> <input type="text" name="juso" placeholder="주소" readonly></div>
         <div> <input type="text" name="juso_etc" placeholder="상세주소"></div>
          <div style="height:28px"> <input type="checkbox" name="gibon" value="1"> 기본배송지로 사용   </div>
         <div id="bb"> <input type="submit" value="저장"></div>
     </form>
  </section>
</body>
</html>