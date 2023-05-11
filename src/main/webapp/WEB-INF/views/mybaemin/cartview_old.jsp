<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width: 1000px;
		/* height:1500px; */
		margin: auto;
		text-align: center;
		font-family:sans-serif;
		margin-top:50px;
		margin-bottom:200px;
		font-size:20px;
	}
	
	section #teong {
		margin-top:100px;
	}
	
	section #more {
		width:200px;
		height:45px;
		background:white;
		border:1px solid #ccc;
		border-radius:30px;
		font-size:20px;
		padding-bottom:5px;
	}
	
	section #option {
		display:inline-block;
		width:100px;
		height:28px;
		border-radius:3px;
		text-align:center;
		padding-top:7px;
		margin-top:5px;
		border:1px solid #ccc;
	}
	
	section #su {
		width:80px;
		height:22px;
		border:none;
		outline:none;
		padding-top:3px;
		padding-bottom:3px;
	}
	
	section a {
		color:black;	
	}
	
	section #delivery {
		outline:none;
		border:none;
		font-size:24px;
	}
	
	section input[type=submit] {
		display: inline-block;
		width: 600px;
		height: 70px;
		font-size:30px;
		border: 1px solid #2ac1bc;
		background:#2ac1bc; 
		color:white;
		font-weight:900;
		border-radius:5px;
	}
</style>
	<script src="https://code.jquery.com/jquery-latest.js"></script>
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
 	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
	<script>
		/* $(function() {
			var $imsi = $(".su");
	   		$(".su").spinner({
	   			min:1,
	   			max:10,
	   			
	   			// spinner의 값을 바꿀 때 실행되는 함수
	   			spin:function(e,ui){ 
	   				// price_cal(); // 체크된 상품의 가격을 계산하여 아래에 출력
	   				
	   				// 수량과 단가를 알아야 한다.
	   				// ui.value: 수량
	   				var n = $imsi.index(this);
	   				// alert($("section .pr").eq(n).value);
	   				// alert(document.getElementsByClassName("pr")[n].value);
	   				var pr = document.getElementsByClassName("pr")[n].value; // 단가
	   				var baeprice = document.getElementsByClassName("baeprice")[n].value;
	   				var price = parseInt(ui.value * pr) + parseInt(baeprice); // 수량
	   				price = comma(price);
	   				document.getElementsByClassName("prin")[n].value = price + "원";
	   				
	   				// ajax를 통해 cart 테이블의 수량을 변경시킨다.
	   				var menu = document.getElementsByClassName("menu")[n].value;
	   				var su = ui.value;
	   				
	   				var chk = new XMLHttpRequest();
	   				chk.onload=function(){
	   					// alert(chk.responseText);
	   					if(chk.responseText == "1")
	   						alert("내부오류");
	   				}
	   				chk.open("get", "cart_su?menu="+menu+"&su="+su);
	   				chk.send();
	   			}
	   		});
		}); */
		function maincheck(my)
		   {
			   //alert(my.checked);
			   var csub=document.getElementsByClassName("csub");
			   //alert(csub.length);
			   
			   var len=csub.length; // 상품의 갯수
			   
			   if(my.checked) // true, false
			   {
				   // 체크가 되었다면 => 상품의 체크박스에 전부 체크
				   for(i=0;i<len;i++)
				   {
					   csub[i].checked=true;
				   } 	   
				   // 전체선택 체크박스도 체크
				   document.getElementById("up").checked=true;
				   document.getElementById("down").checked=true;
			   }	
			   else
			   {
				   // 체크가 안되었다면 => 상품의 체크박스에 전부 해제
				   for(i=0;i<len;i++)
				   {
					   csub[i].checked=false;
				   } 	   
				   // 전체선택 체크박스도 체크
				   document.getElementById("up").checked=false;
				   document.getElementById("down").checked=false;
			   }	   
			   
			   price_cal();
			   // 전체선택이 클릭되었을때 submit버튼 사용여부
			   var n=0;
			   for(i=0;i<len;i++)
			   {
				   if(csub[i].checked)
					   n++; // 체크가 된 상품의 갯수
			   }
			   if(n==0)
		       { 
		    	   document.gform.submit.disabled=true;
		       }
		       else
		       {
		           document.gform.submit.disabled=false;	   
		       }
		   }
		/* function subcheck()
		   {
			   var csub=document.getElementsByClassName("csub");
			   var len=csub.length; // 총상품의 갯수
			   
			   // 상품의 체크박스가 몇개 체크되었나를 계산
			   var n=0;
			   for(i=0;i<len;i++)
			   {
				   if(csub[i].checked)
					   n++; // 체크가 된 상품의 갯수
			   }

		       if(len==n)
		       {
		    	   document.getElementById("up").checked=true;
				   document.getElementById("down").checked=true;
		       }	
		       else
		       {
		    	   document.getElementById("up").checked=false;
				   document.getElementById("down").checked=false;
		       }	  
		       
		       //checked가 하나도 안되어 있으면 전송버튼 사용불가
		      
		    	   
		       price_cal();
		   } */
		function comma(num){
  			return new Intl.NumberFormat().format(num);
  		}
		 var proprice=[${proprice}]; // [5000,6000,8000]
		   var prohalin=[${prohalin}]; // [500,300,100]
		   var probae=[${probae}];   // [0,3000,2000]
		   
		   function price_cal()  //체크박스가 클릭될 때 실행
		   {
			   // 체크박스가 체크된 것을 확인(subcheck)
			   var csub=document.getElementsByClassName("csub");
			   var len=csub.length; // 상품의 갯수
			   alert(len);
			   var chongprice=0;
			   var halin=0;
			   var bprice=0;
			   //gumae에 보내기 위한 pcode와 su를 합치기
			   var totalmenu="";
			   var totalsu="";
			   for(i=0;i<len;i++)
			   {
				   if(csub[i].checked)
				   {
					   var su=parseInt(document.getElementsByClassName("su")[i].value);
					  // alert(su);
					   // 총상품가격 product.price
					   chongprice=chongprice+(proprice[i]*su);
					   // 총할인금액 product.halin
					   halin=halin+(prohalin[i]*su);
					   // 총배송비    product.baesong
					   bprice=bprice+probae[i];
					   
					   //체크된 상품코드 추가
					   totalmenu=totalmenu+document.getElementsByClassName("menu")[i].value+",";
					   //체크된 상품 수량추가
					   totalsu=totalsu+document.getElementsByClassName("su")[i].value+",";
				   }	   
			   }
			   
			   //alert(totalpcode)
			   //alert(totalsu)
			   //체크된 상품코드와 수량을 form 태그에 전달
			   document.gform.menu.value=totalmenu;
			   document.gform.su.value=totalsu;
			   // 총결제금액 
			   cprice=chongprice+bprice-halin;
			   
			   chongprice=new Intl.NumberFormat().format(chongprice);
			   halin=new Intl.NumberFormat().format(halin);
			   bprice=new Intl.NumberFormat().format(bprice);
			   cpirce=new Intl.NumberFormat().format(cprice);
			   
			   // 문서에 출력
			   document.getElementById("chongprice").innerText=chongprice+"원";
			 
			   document.getElementById("bprice").innerText=bprice+"원";
			   //document.getElementById("cprice").innerText=cprice+"원";
			   cprice=comma(cprice);
			   
			   /*
			   var chk="";
			   for(i=0;i<len;i++)
			   {
				   if(csub[i].checked)
					   chk=chk+i+",";
			   }	   
			   */
			   // 배열을 이용하여 체크된 상품의 인덱스를 저장
			   /*
			   var pro=new Array(len); // 체크박스의 갯수만큼 배열 생성
			   
			   for(i=0;i<len;i++)
			   {
				   if(csub[i].checked) // 상품앞에 있는 체크박스가 체크되었느냐?
					    pro[i]=1;
				   else
					    pro[i]=-1;  
			   }	   
			   // 체크된 인덱스는 0이상  , 체크가 안된 인덱스는 -1
			   //alert(pro);
			   */
			   
			 
			 
		   }
		   
		
		/* var proprice = [${proprice}];
		var probae = [${probae}];  */
	</script>
</head>
<body>
	<section>
		<%-- <c:if test="${ cvo == null }">
			<img id="teong" src="../resources/img/teong.png" width="500" height="500"> <p>
			<div style="font-size:24px;">장바구니가 텅 비었어요</div> <p>
			<input type="button" id="more" onclick="location='../main/main'" value="+ 더 담으러 가기">
		</c:if>
		<c:if test="${ cvo != null }"> --%>
		 <form name="gform" method="post" action="../food/gumae"> 
		<table width="600" align="center">
			<caption><h2>장바구니</h2></caption>
			  <input type="checkbox" onclick="maincheck(this)" id="up">전체선택 
			<c:forEach items="${ clist }" var="cvo">
				<input type="hidden" name="price" class="price" value="${ cvo.price }">
				<input type="hidden" name="menu" class="menu" value="${ cvo.menu }">
				<input type="hidden" class="baeprice" name="baeprice" value="${ cvo.baeprice }">
				<input type="hidden" name="fcode" class="fcode" value="${ cvo.fcode }">
				<input type="hidden" name="su" class="su" value="${ cvo.su }">
			<tr height="50">
				<td width="50"><img src="../resources/food/${ cvo.fimg }" widtsh="50" height="50"></td>
				<td colspan="2" align="left"><b>${ cvo.shop }</b></td>
			</tr>
			<tr height="80">
			 <td> <input type="checkbox" class="csub" onclick="subcheck()" value="${cvo.id}">
				<td colspan="2" align="left"><b>${ cvo.menu }</b></td>
				<td align="right"><b onclick="location='cartdel?id=${ cvo.id }'">X</b></td>
			</tr>
			<tr height="50">
				<%-- <td width="150"><img src="../resources/food/${ cvo.mimg }" width="100" height="100"></td> --%>
				<td colspan="2" align="left">
					<%-- ${ fvo.m1_ex } <p> --%>
					<span class="prin"><fmt:formatNumber value="${ cvo.price/cvo.su }" type="number"/>원</span>
				</td>
				<td align="right">
					<input type="text" name="su" id="su" value="${cvo.su}" readonly>
				</td>
			</tr>
			<tr height="50">
				<td colspan="3" align="center" style="border:1px solid #ccc;">
					<span id="plus" style="font-size:20px;"><a href="../food/fcontent?fcode=${ cvo.fcode }">+ 더 담으러 가기</a></span>
				</td>
			</tr>
			<tr height="100">
				<td colspan="3" align="left">
					<span style="font-size:20px;"><b style="font-size:24px;"></b>
						 <select id="delivery">
							<option value="0">배달</option>
							<option value="1">포장</option>
						</select> 
						(으)로 받을게요
						<!-- 해서 가져갈게요 -->
					</span>
					
				</td>
			</tr>
			<tr height="50">
				<td colspan="2" align="left" style="font-size:20px;">총 주문금액</td>
				<td align="right" style="font-size:20px;"><fmt:formatNumber value="${ cvo.price }" type="number"/>원</td>
			</tr>
			<tr height="50">
				<td colspan="2" align="left" style="font-size:20px;">배달팁</td>
				<td align="right" style="font-size:20px;"><fmt:formatNumber value="${ cvo.baeprice }" type="number"/>원</td>
			</tr>
			<tr height="100">
				<td colspan="2" align="left" style="font-size:22px;"><b>결제예정금액</b></td>
				<td align="right" style="font-size:22px;"><b><fmt:formatNumber value="${ cvo.price+cvo.baeprice }" type="number"/>원</b></td>
			</tr>
			</c:forEach>
			 <input type="checkbox" onclick="maincheck(this)" id="down">전체선택 
			  <tr>
         <td colspan="7" align="right">
         총상품가격 : <span id="chongprice"> 0원 </span>
         총할인가격 : <span id="halin"> 0원 </span>
         총배송비 : <span id="bprice"> 0원 </span>
            총결제금액 : <span id="cprice"> 0원 </span>
         </td>
       </tr>
       <tr>
			<tr height="100">
				<td colspan="3">
					<span style="color:#8C8C8C;font-size:16px;">(주)우아한 형제들은 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 따라서 (주)우아한형제들은 상품, 거래정보 및 거래에 대하여 책임을 지지 않습니다.</span>
				</td>
			</tr>
			<tr height="200">
				<td colspan="3" align="center">
					<form name="gform" method="post" action="../food/gumae">
						<input type="hidden" name="fcode" value="${fcode}">
						<input type="hidden" name="su">
						<input type="hidden" name="menu">
						<input type="submit" value="배달 주문하기" name="submit">
					</form>
				</td>
			</tr>
		</table> 
		 </form> 
		<%-- </c:if> --%>	
	</section>
</body>
</html>