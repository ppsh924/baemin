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
		font-family: sans-serif;
	}
	
	section table {
		margin-top: 50px;
	}
	
	section #title {
		margin-top: 100px;
		text-align: center;
		font-size: 30px;
		font-weight: 500;
		font-family: 'BMDOHYEON';
		src:
			url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff')
			format('woff');
		font-weight: normal;
		font-style: normal;
	}
	
	section input[type=text] {
		width: 330px;
		height: 35px;
		border: 1px solid #ccc;
		outline: none;
	}
	
	section input[type=password] {
		width: 330px;
		height: 35px;
		border: 1px solid #ccc;
		outline: none;
	}
	
	#fcode { 
		width: 170px;
		height: 38px;
		border: 1px solid #ccc;
		outline: none;
	}
	#dae {
		width: 150px;
		height: 40px;
		border: 1px solid #ccc;
		outline: none;
	}
	
	section input[type=checkbox] {
		width: 25px;
		height: 25px;

	}
	
	section #textarea {
		width: 330px;
		height: 200px;
		border: 1px solid #ccc;
		outline: none;
	}
	
	section input[type=submit] {
		width: 300px;
		height: 39px;
		background: #2ac1bc;
		border: 1px solid #2ac1bc;
		color: white;
		font-size: 16px;
		font-weight: 900;
		margin-top:10px;
	}
	
	section input[type=button] {
		width: 300px;
		height: 30px;
		background: #2ac1bc;
		border: 1px solid #2ac1bc;
		color: white;
		font-size: 16px;
		font-weight: 900;
		margin-top:30px;
	}
	
	section #uimg {
       position:absolute;
       width:300px;
       height:950px;
       border:1px solid #2ac1bc;
       background:white;
       visibility:hidden;
       padding:15px;
    }
    section #uimg span {
       font-size:12px;
    }
	
	  section .fimg {
       visibility:hidden;
    }
    
     section .m1_img , .m2_img, .m3_img, .m4_img, .m5_img{
       visibility:hidden;
    }
    
   
	
	  
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function chgimage(img1,img2,img3,img4,img5,img6,id)
{
	 document.getElementsByClassName("img")[0].src="../resources/food/"+img1;
	 document.getElementsByClassName("img")[1].src="../resources/food/"+img2;
	 document.getElementsByClassName("img")[2].src="../resources/food/"+img3;
	 document.getElementsByClassName("img")[3].src="../resources/food/"+img4;
	 document.getElementsByClassName("img")[4].src="../resources/food/"+img5;
	 document.getElementsByClassName("img")[5].src="../resources/food/"+img6;
	 
	 var w=document.documentElement.clientWidth;
     var h=document.documentElement.clientHeight;
     
     w=w/2-90;
 	 h=h/2+document.documentElement.scrollTop-150;
 	 
 	 document.getElementById("uimg").style.visibility="visible";
 	 document.getElementById("uimg").style.left=w+"px";
 	 document.getElementById("uimg").style.top=h+"px";
 	   
 	   // 바꿀 이미지에 해당하는 레코드의 id를 폼태그에 전달
 	   document.fform.id.value=id;
 	   
 	   image1=img1;
 	   image2=img2;
 	   image3=img3;
 	   image4=img4;
 	   image5=img5;
 	   image6=img6;
}

// 변수를 활용하여 지금 작업이 되는 창의 그림이름을 저장
var image1="" // pimg
var image2=""; // cimg
var image3=""; // cimg
var image4=""; // cimg
var image5=""; // cimg
var image6=""; // cimg

function file(n,my) // n=0:pimg  , n=1:cimg
{
	   //alert(image1+" "+image2+" "+image3 );
	  // alert(my.checked);
	   if(my.checked)
	   {
		   document.getElementsByClassName("fimg")[n].style.visibility="visible";
		   
		   if(n==0)
		      document.fform.delfimg.value=image1;
		   
		   else if(n==1)
			  document.fform.delm1_img.value=image2;
		   
		   else if(n==2)
				  document.fform.delm2_img.value=image3;
		   
		   else if(n==3)
				  document.fform.delm3_img.value=image4;
		   
		   else if(n==4)
				  document.fform.delm4_img.value=image5;
			 
		 
		   else
		      document.fform.delm5_img.value=image6;
		   
	   }
	   else
	   {
		   document.getElementsByClassName("fimg")[n].style.visibility="hidden";
		   if(n==0)
		      document.fform.delfimg.value="";
		   
		   else if(n==1)
			      document.fform.delm1_img.value="";
		   
		   else if(n==2)
			      document.fform.delm2_img.value="";
		   
		   else if(n==3)
			      document.fform.delm3_img.value="";
		   
		   else if(n==4)
			      document.fform.delm4_img.value="";
		   
		
		   else
			   document.fform.delm5_img.value="";
		   
	   }	   
	   
	   //alert("메인"+document.fform.delfimg.value+" : 상세"+document.fform.delm1_img.value);
}



function filecheck(my) // 그림수정이 클릭되면
{
	
	 var flen=my.fimg.value.length;
	 var m1len=my.m1_img.value.length;
	 var m2len=my.m2_img.value.length;
	 var m3len=my.m3_img.value.length;
	 var m4len=my.m4_img.value.length;
	 var m5len=my.m5_img.value.length;
	 
	 
	 if(document.getElementsByClassName("ck")[0].checked) 
     {
		   if(flen==0)
		   {
			   alert("메인사진을 선택하세요");
			   return false;
		   }	   
     }	   
	 
	 if(document.getElementsByClassName("ck")[1].checked) 
     {
		   if(m1len==0)
		   {
			   alert("메뉴1 사진을 선택하세요");
			   return false;
		   }	   
     }	   
	 
	 if(document.getElementsByClassName("ck")[2].checked) 
     {
		   if(m2len==0)
		   {
			   alert("메뉴2 사진을 선택하세요");
			   return false;
		   }	   
     }	   
	 
	 if(document.getElementsByClassName("ck")[3].checked) 
     {
		   if(m3len==0)
		   {
			   alert("메뉴3 사진을 선택하세요");
			   return false;
		   }	   
     }	   
	 
	 if(document.getElementsByClassName("ck")[4].checked) 
     {
		   if(m4len==0)
		   {
			   alert("메뉴4 사진을 선택하세요");
			   return false;
		   }	   
     }	   
	 
	 if(document.getElementsByClassName("ck")[5].checked) 
     {
		   if(m5len==0)
		   {
			   alert("메뉴5 사진을 선택하세요");
			   return false;
		   }	   
     }	   
	   return true;
}

function fcancel() // 수정레이어 숨김
{
	   document.getElementById("uimg").style.visibility="hidden";
}

function init()
{
document.f.state[${fvo.state}].checked=true;
document.f.fran[${fvo.fran}].checked=true;
}
</script>
</head>
<body  onload="init()">
	<section>
	<div id="uimg">
    <form name="fform" method="post" onsubmit="return filecheck(this)" action="changeimage" enctype="multipart/form-data">
     <input type="hidden" name="id">
     <input type="hidden" name="fcode" value="${fvo.fcode}">
     <input type="hidden" name="delfimg">
     <input type="hidden" name="delm1_img">
     <input type="hidden" name="delm2_img">
     <input type="hidden" name="delm3_img">
     <input type="hidden" name="delm4_img">
     <input type="hidden" name="delm5_img">
     <div>
        <span> 메인이미지 </span> <br>
        <img class="img" width="100" height="80"><input class="ck" type="checkbox" onclick="file(0,this)"><span> 삭제시 체크 </span>
        <input type="file" name="fimg" class="fimg"> 
     </div>
      <hr>
     <div>
        <span> 메뉴1 사진 </span> <br>
        <img class="img" width="100" height="80"><input class="ck" type="checkbox" onclick="file(1,this)"> <span> 삭제시 체크 </span>
        <input type="file" name="m1_img" class="fimg">  
     </div>
     <hr>
      <div>
        <span> 메뉴2 사진 </span> <br>
        <img class="img" width="100" height="80"><input class="ck" type="checkbox" onclick="file(2,this)"> <span> 삭제시 체크 </span>
        <input type="file" name="m2_img" class="fimg">  
     </div>
     <hr>
      <div>
        <span> 메뉴3 사진 </span> <br>
        <img class="img" width="100" height="80"><input class="ck" type="checkbox" onclick="file(3,this)"> <span> 삭제시 체크 </span>
        <input type="file" name="m3_img" class="fimg">  
     </div>
     <hr>
     <div>
        <span> 메뉴4 사진 </span> <br>
        <img class="img" width="100" height="80"><input class="ck" type="checkbox" onclick="file(4,this)"> <span> 삭제시 체크 </span>
        <input type="file" name="m4_img" class="fimg">  
     </div>
     <hr>
       <div>
        <span> 메뉴5 사진 </span> <br>
        <img class="img" width="100" height="80"><input class="ck" type="checkbox" onclick="file(5,this)"> <span> 삭제시 체크 </span>
        <input type="file" name="m5_img" class="fimg">  
     </div>
     <hr>
     <input type="submit" value="그림 수정" id="imgup"> <input type="button" onclick="fcancel()" value="취소">
     </form>
     </div>
	
	
		<form name="f" method="post" action="acontent_ok">
		  <input type="hidden" name="id" value="${fvo.id}">
		  <input type="hidden" name="fcode" value="${fvo.fcode}">
		  <input type="hidden" name="state" value="${fvo.state}">
		  <input type="hidden" name="fran" value="${fvo.fran}">
		  
			<table width="600" align="center">
				<caption><h3>음식점 수정</h3></caption>
				<tr>
					<td>가게코드</td>
					<td>
						<input type="text" name="fcode" id="fcode" readonly value="${fvo.fcode}">
					</td>
				</tr>
				<tr>
					<td>이미지</td>
					<td> <img onclick="chgimage('${fvo.fimg}','${fvo.m1_img}','${fvo.m2_img}','${fvo.m3_img}','${fvo.m4_img}','${fvo.m5_img}',${fvo.id})" src="../resources/food/${fvo.fimg}" width="50" height="40">
					     <img src="../resources/food/${fvo.m1_img}" width="50" height="40">
					     <img src="../resources/food/${fvo.m2_img}" width="50" height="40">
					     <img src="../resources/food/${fvo.m3_img}" width="50" height="40">
					     <img src="../resources/food/${fvo.m4_img}" width="50" height="40">
					     <img src="../resources/food/${fvo.m5_img}" width="50" height="40">
					</td>
				</tr>
				<tr>
					<td>상호명</td>
					<td><input type="text" name="shop" value="${fvo.shop}"></td>
				</tr>
				<tr>
					<td>최소주문금액</td>
					<td><input type="text" name="minorder" value="${fvo.minorder}"></td>
				</tr>
				<tr>
					<td>배달팁</td>
					<td><input type="text" name="baeprice" value="${fvo.baeprice}"></td>
				</tr>
				<tr>
					<td>배달시간</td>
					<td><input type="text" name="baetime" value="${fvo.baetime}"></td>
				</tr>
				<tr>
					<td>가게주소</td>
					<td><input type="text" name="juso" value="${fvo.juso}"></td>
				</tr>
				<tr>
					<td>가게소개</td>
					<td>
						<textarea name="shop_sogae" id="textarea" >${fvo.shop_sogae}</textarea>
					</td>
				</tr>
				<tr>
					<td>운영시간</td>
					<td><input type="text" name="hours" value="${fvo.hours}"></td>
				</tr>
				<tr>
					<td>휴무일</td>
					<td><input type="text" name="holiday" value="${fvo.holiday}"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" value="${fvo.phone}"></td>
				</tr>
				<tr>
					<td>배달지역</td>
					<td><input type="text" name="area" value="${fvo.area}"></td>
				</tr>
				<tr>
					<td>대표자명</td>
					<td><input type="text" name="boss" value="${fvo.boss}"></td>
				</tr>
				<tr>
					<td>사업자등록번호</td>
					<td><input type="text" name="regi_number" value="${fvo.regi_number}"></td>
				</tr>
				<tr>
					<td>안내 및 혜택</td>
					<td>
						<textarea name="benefit" id="textarea">${fvo.benefit}</textarea>
					</td>
				</tr>
				<tr>
					<td>최근 주문수</td>
					<td><input type="text" name="recent_orders" value="${fvo.recent_orders}"></td>
				</tr>
				<tr>
					<td>전체 리뷰수</td>
					<td><input type="text" name="total_orders" value="${fvo.total_orders}"></td>
				</tr>
				<tr>
					<td>찜</td>
					<td><input type="text" name="wish" value="${fvo.wish}"></td>
				</tr>
				<tr>
					<td>사장님 공지</td>
					<td>
						<textarea name="boss_gongji" id="textarea">${fvo.boss_gongji}</textarea>
					</td>
				</tr>
				<tr>
					<td>사장님 한마디</td>
					<td>
						<textarea name="boss_one" id="textarea">${fvo.boss_one}</textarea>
					</td>
				</tr>
				<tr>
					<td>1인분</td>
					<td><input type="checkbox" name="state" id="state" ></td>
				</tr>
				<tr>
					<td>프랜차이즈</td>
					<td><input type="checkbox" name="fran" id="fran"></td>
				</tr>
				<tr>
					<td>메뉴1</td>
					<td><input type="text" name="m1" value="${fvo.m1}"></td>
				</tr>
				
					<td>메뉴1 설명</td>
					<td><input type="text" name="m1_ex" value="${fvo.m1_ex}"></td>
				</tr>
				<tr>
					<td>메뉴1 가격</td>
					<td><input type="text" name="m1_price" value="${fvo.m1_price}"></td>
				</tr>
				<tr>
					<td>메뉴1 수량</td>
					<td><input type="text" name="m1_su" value="${fvo.m1_su}"></td>
				</tr>
				<tr>
					<td>메뉴2</td>
					<td><input type="text" name="m2" value="${fvo.m2}"></td>
				</tr>
				
				<tr>
					<td>메뉴2 설명</td>
					<td><input type="text" name="m2_ex" value="${fvo.m2_ex}"></td>
				</tr>
				<tr>
					<td>메뉴2 가격</td>
					<td><input type="text" name="m2_price" value="${fvo.m2_price}"></td>
				</tr>
				<tr>
					<td>메뉴2 수량</td>
					<td><input type="text" name="m2_su" value="${fvo.m2_su}"></td>
				</tr>
				<tr>
					<td>메뉴3</td>
					<td><input type="text" name="m3" value="${fvo.m3}"></td>
				</tr>
				
				<tr>
					<td>메뉴3 설명</td>
					<td><input type="text" name="m3_ex" value="${fvo.m3_ex}"></td>
				</tr>
				<tr>
					<td>메뉴3 가격</td>
					<td><input type="text" name="m3_price" value="${fvo.m3_price}"></td>
				</tr>
				<tr>
					<td>메뉴3 수량</td>
					<td><input type="text" name="m3_su" value="${fvo.m3_su}"></td>
				</tr>
				<tr>
					<td>메뉴4</td>
					<td><input type="text" name="m4" value="${fvo.m4}"></td>
				</tr>
				
				<tr>
					<td>메뉴4 설명</td>
					<td><input type="text" name="m4_ex" value="${fvo.m4_ex}"></td>
				</tr>
				<tr>
					<td>메뉴4 가격</td>
					<td><input type="text" name="m4_price" value="${fvo.m4_price}"></td>
				</tr>
				<tr>
					<td>메뉴4 수량</td>
					<td><input type="text" name="m4_su" value="${fvo.m4_su}"></td>
				</tr>
				<tr>
					<td>메뉴5</td>
					<td><input type="text" name="m5" value="${fvo.m5}"></td>
				</tr>
				
				<tr>
					<td>메뉴5 설명</td>
					<td><input type="text" name="m5_ex" value="${fvo.m5_ex}"></td>
				</tr>
				<tr>
					<td>메뉴5 가격</td>
					<td><input type="text" name="m5_price" value="${fvo.m5_price}"></td>
				</tr>
				<tr>
					<td>메뉴5 수량</td>
					<td><input type="text" name="m5_su" value="${fvo.m5_su}"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="음식점 수정">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>