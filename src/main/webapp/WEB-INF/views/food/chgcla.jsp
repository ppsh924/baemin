<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <style>
	.div {
		width: 370px;
		height: 35px;
		margin-top: 12px;
		padding-left: 10px;
		border: 1px solid #cccccc;
		padding-top: 15px;
	}
	
	input[type=button] {
		width: 380px;
		height: 50px;
		margin-top: 10px;
		font-size: 20px;
		border: 1px solid #2ac1bc;
		background: #2ac1bc;
		color:white;
		font-weight:900;
	}
	
	#ask {
		width:370px;
		text-align:center;
		margin-bottom:12px;
	}
</style>
 <script>
   function chg_ok()  
   {
	   var cla=document.pkc.cla.value;
	   var id=document.pkc.id.value;
	   //alert(id);
	   //ajax를 통해 baesong테이블의 cla값을 변경
	   var chk=new XMLHttpRequest();
	   chk.onload=function()
	   {
		   //alert(chk.responseText);
		   if(chk.responseText=="0")
		   {
			   //opener.location.reload();
			   //alert(document.getElementsByClassName("div")[cla].innerText);
			   var my2=opener.document.getElementById("my2");
			   var div=document.getElementsByClassName("div")
			   my2.innerText=div[cla].innerText;
			   //hidden인 cla값을 변경
			   opener.document.gform.cla.value=cla;
			   opener.document.gform.id.value=id;
			   close();
		   }
		   else
			   alert("오류");
	   }
	   chk.open("get","chg_ok?cla="+cla+"&id="+id);
	   chk.send();
   }
   window.onload=function()
   {
	   document.pkc.cla[${cla}].checked=true;
   }
 </script>
</head>
<body>
    <div id="ask"><h3> 배송 요청 사항 </h3></div>
    <form name="pkc">
    <input type="hidden" name="id" value="${id}">
     <div class="div"> <input type="radio" class="cla" name="cla" value="0"> 문 앞</div>
     <div class="div"> <input type="radio" class="cla" name="cla" value="1"> 직접 받고 부재시 문 앞</div>
     <div class="div"> <input type="radio" class="cla" name="cla" value="2"> 경비실</div>
     <div class="div"> <input type="radio" class="cla" name="cla" value="3"> 택배함</div>
      <input type="button" value="배송 요청 변경" onclick="chg_ok()"> 
    </form>
</body>
</html>