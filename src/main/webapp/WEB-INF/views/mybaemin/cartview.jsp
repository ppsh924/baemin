<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	font-family: sans-serif;
	margin-top: 50px;
	margin-bottom: 200px;
	font-size: 20px;
}

section #teong {
	margin-top: 100px;
}

section #more {
	width: 200px;
	height: 45px;
	background: white;
	border: 1px solid #ccc;
	border-radius: 30px;
	font-size: 20px;
	padding-bottom: 5px;
	cursor: pointer;
}

section #blue {
	width: 220px;
	height: 25px;
	font-size: 14px;
	font-weight: 700;
	background: #1266FF;
	color: white;
	padding-top: 5px;
	border-radius: 5px;
}

section #blue #x {
	float: right;
	padding-right: 5px;
	cursor: pointer;
}

section #option {
	display: inline-block;
	width: 100px;
	height: 28px;
	border-radius: 3px;
	text-align: center;
	padding-top: 7px;
	margin-top: 5px;
	border: 1px solid #ccc;
}

section .su {
	width: 80px;
	height: 22px;
	border: none;
	outline: none;
	padding-top: 3px;
	padding-bottom: 3px;
}

section a {
	color: black;
}

section #state {
	outline: none;
	border: none;
	font-size: 24px;
}

section #submit {
	display: inline-block;
	width: 600px;
	height: 70px;
	font-size: 30px;
	border: 1px solid #2ac1bc;
	background: #2ac1bc;
	color: white;
	font-weight: 900;
	border-radius: 5px;
	cursor:pointer;
}

section #submit2 {
	display: inline-block;
	width: 600px;
	height: 70px;
	font-size: 30px;
	border: 1px solid #2ac1bc;
	background: #2ac1bc;
	color: white;
	font-weight: 900;
	border-radius: 5px;
	text-align: center;
}

section #nosubmit {
	display: inline-block;
	width: 600px;
	height: 70px;
	font-size: 30px;
	border: 1px solid #D5D5D5;
	background: #D5D5D5;
	color: white;
	font-weight: 900;
	text-align: center;
	border-radius: 5px;
}
</style>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
		$(function() {
			var $imsi = $(".su");
	   		$(".su").spinner({
	   			min:1,
	   			max:100,
	   			
	   			// spinner의 값을 바꿀 때 실행되는 함수
	   			spin:function(e,ui){ 
	   				// price_cal(); // 체크된 상품의 가격을 계산하여 아래에 출력
	   				
	   				// 수량과 단가를 알아야 한다.
	   				// ui.value: 수량
	   				var n = $imsi.index(this);
	   		 
	   				var pr = document.getElementsByClassName("pr")[n].value; // 단가
	   				var baeprice = document.getElementsByClassName("baeprice")[n].value;
	   				var pri = parseInt(ui.value * pr) // 단가*수량
	   				var price = parseInt(ui.value * pr) + parseInt(baeprice); // 단가*수량 + 배송비
	   				pri = comma(pri);
	   				price = comma(price);
	   				document.getElementsByClassName("pri")[n].innerText = pri + "원";
	   				//document.getElementsByClassName("prin")[n].innerText = price + "원";
	   			    
	   				// ajax를 통해 cart 테이블의 수량을 변경시킨다.
	   				var menu = document.getElementsByClassName("menu")[n].value;
	   				var su = ui.value;
	   				// alert(su);
	   				
	   				var chk = new XMLHttpRequest();
	   				chk.onload=function(){
	   					var menus = document.getElementsByClassName("menu");  //메뉴명
	   			    	var state3=parseInt(document.getElementById("state").value.replace(/,/gi, ""));  //배달포장여부
	   					var baeprice2=parseInt(document.getElementById("baeprice").value.replace(/,/gi, "")); //배달비
	   					var minorders=parseInt(document.getElementById("minorder").value.replace(/,/gi,"")); // 최소주문금액
	   					//alert(minorder);
	   					    var totalhap=0;    //총 구매금액 (배달비포함)
	   						var len = menus.length;
	   				        var sci=0;
	   				        var totalsci=0;  //총 주문금액

	   						for(i=0; i<len; i++)
	   						{	
	   						  var sci=parseInt(document.getElementsByClassName("pri")[i].innerText.replace(/,/gi, ""));
	   						  totalsci=totalsci+sci
	   						}
	   					 
	   				        if(state3==0)
	  			           {
	   				         if(totalsci<minorders)
	   			             { 
	   			        	 
	   			        	   document.getElementById("blue").style.visibility="visible";
	   			        	   document.getElementById("submit").style.display="none";
	   			        	   document.getElementById("nosubmit").style.display="block";
	   			        	   totalhap=totalsci+baeprice2;
	   		                   document.getElementById("baedal2").innerText=comma(baeprice2)+"원";
	   			             }
	   			            else
	   			             {
	   			        	   document.getElementById("blue").style.visibility="hidden";
	   			        	   document.getElementById("nosubmit").style.display="none";
	   			        	   document.getElementById("submit").style.display="block";
	   				           totalhap=totalsci+baeprice2;
	   		                   document.getElementById("baedal2").innerText=comma(baeprice2)+"원";
	   			             }  
	   				           totalhap=totalsci+baeprice2;
	   				           document.getElementById("submit").value="배달 주문하기 "+comma(totalhap)+"원";
	  			           }
	  			          else
	  			          { 	
	  					     totalhap=totalsci;
	  					     document.getElementById("tip").style.display="none";
	  					     document.getElementById("submit").value="포장 주문하기 "+comma(totalhap)+"원";
	  					     document.getElementById("nosubmit").style.display="none";
	  					    document.getElementById("blue").style.visibility="hidden";
	  			          }
	   						
	   				        document.getElementById("chongjumun").innerText= comma(totalsci) + "원";		
	   						document.getElementById("chongchong").innerText= comma(totalhap) + "원";
	   					    
	   				
	   					if(chk.responseText == "1")
	   						alert("내부오류");
	   				}
	   				chk.open("get", "cartsu?menu="+menu+"&su="+su+"&price="+pr);
	   				chk.send(); 
	   			}
	   		});
		});
		
		function comma(num){
  			return new Intl.NumberFormat().format(num);
  		}
	
		var proprice = [${proprice}];
		/* var probae = [${probae}]; */
		
		
	    window.onload=function(){
	    	var menus = document.getElementsByClassName("menu");  //메뉴명
		    	var state3=parseInt(document.getElementById("state").value.replace(/,/gi, ""));  //배달포장여부
				var baeprice2=parseInt(document.getElementById("baeprice").value.replace(/,/gi, "")); //배달비
				var minorders=parseInt(document.getElementById("minorder").value.replace(/,/gi,"")); // 최소주문금액
				//alert(minorder);
				    var totalhap=0;    //총 구매금액 (배달비포함)
					var len = menus.length;
			        var sci=0;
			        var totalsci=0;  //총 주문금액

					for(i=0; i<len; i++)
					{	
					  var sci=parseInt(document.getElementsByClassName("pri")[i].innerText.replace(/,/gi, ""));
					  totalsci=totalsci+sci
					}
				 
					 if(state3==0)
			           {
 				         if(totalsci<minorders)
 			             { 
 			        	 
 			        	   document.getElementById("blue").style.visibility="visible";
 			        	   document.getElementById("submit").style.display="none";
 			        	   document.getElementById("nosubmit").style.display="block";
 			        	   totalhap=totalsci+baeprice2;
 		                   document.getElementById("baedal2").innerText=comma(baeprice2)+"원";
 			             }
 			            else
 			             {
 			        	   document.getElementById("blue").style.visibility="hidden";
 			        	   document.getElementById("nosubmit").style.display="none";
 			        	   document.getElementById("submit").style.display="block";
 				           totalhap=totalsci+baeprice2;
 		                   document.getElementById("baedal2").innerText=comma(baeprice2)+"원";
 			             }  
 				           totalhap=totalsci+baeprice2;
 				           document.getElementById("submit").value="배달 주문하기 "+comma(totalhap)+"원";
			           }
			       
		          else
		          { 	
				     totalhap=totalsci;
				     document.getElementById("tip").style.display="none";
				    
				     document.getElementById("submit").value="포장 주문하기 "+comma(totalhap)+"원";
				     document.getElementById("nosubmit").style.display="none";
				     document.getElementById("blue").style.visibility="hidden";
		          }
					
			        document.getElementById("chongjumun").innerText= comma(totalsci) + "원";		
					document.getElementById("chongchong").innerText= comma(totalhap) + "원";
					
				
		}		
	  		
	  	 function change(state)
	     {
	    	  //alert(rnum);
	  		  var state=document.getElementById("state").value;
	    
	    	  var baeprice=document.getElementById("baeprice").value;
	    	  
	    	  if(state==0)	  
	    		 var baeprice2=baeprice;
	    	
	    	  else
	    		 var baeprice2=baeprice-baeprice;
	    	
	  		  //alert(state);	
	  		  var chk = new XMLHttpRequest();
			  chk.onload=function(){
			   // alert(chk.responseText);
			  if(chk.responseText == "1")
				  alert("내부오류");
			  }
			  chk.open("get", "cartstate?state="+state+"+&baeprice2="+baeprice2);
			  chk.send();
			  location.reload();
	     }
	  	 
	  	function hide(){
			document.getElementById("blue").style.display="none";			
		}
	</script>
</head>
<body>
	<section> <c:if test="${ clist.size() == 0 }">
		<img id="teong" src="../resources/img/teong.png" width="500"
			height="500">
		<p>
		<div style="font-size: 24px;">장바구니가 텅 비었어요</div>
		<p>
			<input type="button" id="more" onclick="location='../main/main'"
				value="+ 더 담으러 가기">
	</c:if> <c:if test="${ clist.size() != 0 }">
		<form name="gform" method="post" action="../food/gumae">
			<table width="600" align="center">
				<caption>
					<h2>장바구니</h2>
				</caption>
				<tr height="50">
					<td width="50"><img
						src="../resources/food/${ clist.get(0).fimg }" width="50"
						height="50"></td>
					<td colspan="2" align="left"><b>${ clist.get(0).shop }</b></td>
				</tr>
				<c:forEach items="${ clist }" var="cvo" varStatus="sts">
					<input type="hidden" name="pr" class="pr"
						value="<fmt:formatNumber value="${ cvo.price/cvo.su }" pattern="#"/>">
					<input type="hidden" name="menu" class="menu" value="${ cvo.menu }">
					<input type="hidden" name="baeprice" id="baeprice" class="baeprice"
						value="${ cvo.baeprice }">
					<input type="hidden" name="fcode" class="fcode"
						value="${ cvo.fcode }">
					<input type="hidden" value="${ cvo.su}">
					<input type="hidden" id="state3" name="state" value="${cvo.state}">
					<input type="hidden" id="minorder" name="minorder"
						value="${cvo.minorder}">
					<tr height="80">
						<td colspan="2" align="left"><b>${ cvo.menu }</b></td>
						<td align="right"><b style="cursor: pointer;"
							onclick="location='cartdel?id=${ cvo.id }'">X</b></td>
					</tr>
					<tr height="50">
						<td colspan="2" align="left"><span class="pri"><fmt:formatNumber
									value="${ cvo.price }" type="number" />원</span></td>
						<td align="right"><input type="text" name="su" class="su"
							value="${ cvo.su }" readonly></td>
					</tr>
				</c:forEach>
				<tr height="60">
					<td colspan="3" align="center" style="border: 1px solid #ccc;">
						<span id="plus" style="font-size: 20px;"><a
							href="../food/fcontent?fcode=${ clist.get(0).fcode }">+ 더 담으러
								가기</a></span>

					</td>
				</tr>

				<tr>
					<td colspan="3" align="center">
						<div id="blue">
							<fmt:formatNumber value="${ clist.get(0).minorder-chongp }"
								type="number" />
							원 더 담으면 배달 가능!<span id="x" onclick="hide()">X</span>
						</div>
					</td>
				</tr>

				<tr height="100">
					<td colspan="3" align="left"><span style="font-size: 20px;"><b
							style="font-size: 24px;"></b> <c:if
								test="${ clist.get(0).state == 0 }">
								<select id="state" name="state" onchange="change(this.value)">
									<c:if test="${ clist.get(0).state == 0 }">
										<option value="0">배달</option>
										<option value="1">포장</option>
									</c:if>
									<c:if test="${ clist.get(0).state == 1 }">
										<option value="1">포장</option>
										<option value="0">배달</option>
									</c:if>
								</select>
						로 받을게요
						</c:if> <c:if test="${ clist.get(0).state == 1 }">
								<select id="state" name="state" onchange="change(this.value)">
									<c:if test="${ clist.get(0).state == 0 }">
										<option value="0">배달</option>
										<option value="1">포장</option>
									</c:if>
									<c:if test="${ clist.get(0).state == 1 }">
										<option value="1">포장</option>
										<option value="0">배달</option>
									</c:if>
								</select>
						해서 가져갈게요
						</c:if> </span></td>
				</tr>
				<tr height="50">
					<td colspan="2" align="left" style="font-size: 20px;">총 주문금액</td>
					<td align="right" style="font-size: 20px;"><span class="prin"
						id="chongjumun">0원</span></td>
				</tr>
				<%-- <c:if test="${ clist.get(0).state == 0 }"> --%>
				<tr height="50" id="tip">
					<td colspan="2" align="left" style="font-size: 20px;" id="tip">배달팁</td>
					<td align="right" style="font-size: 20px;" id="tip"><span
						id="baedal2"></span></td>
				</tr>
				<%-- </c:if> --%>
				<%-- <c:if test="${ clist.get(0).state == 1 }">
				<td colspan="2" align="left" style="font-size:20px;">포장할인</td>
				<td align="right" style="font-size:20px;"><span><fmt:formatNumber value="2000" type="number"/>원</span></td>	
			</c:if> --%>
				<tr height="100">
					<td colspan="2" align="left" style="font-size: 22px;"><b>결제예정금액</b></td>
					<%-- <c:if test="${ clist.get(0).state == 0 }"> --%>
					<td align="right" style="font-size: 22px;"><span
						id="chongchong"><b></b></span></td>

					<%-- <c:if test="${ clist.get(0).state == 1 }">
					<td align="right" style="font-size:22px;"><b><fmt:formatNumber value="${ chongp }" pattern="#,###" type="number" />원</b></td>
				</c:if> --%>
				</tr>
				<tr height="100">
					<td colspan="3"><span style="color: #8C8C8C; font-size: 16px;">(주)우아한
							형제들은 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 따라서 (주)우아한형제들은 상품, 거래정보 및 거래에
							대하여 책임을 지지 않습니다.</span></td>
				</tr>
				<tr height="200">
					<td colspan="3" align="center">
						<%-- <c:if test="${ clist.get(0).state == 0 && clist.get(0).minorder <= chongp }">
						<input type="submit" value="${ chongs }             배달 주문하기         <fmt:formatNumber value="${ chongp+clist.get(0).baeprice }" pattern="#,###" type="number" />원" id="submit" name="submit">
						</c:if>
						<c:if test="${ clist.get(0).state == 1 }">
						<input type="submit" value="${ chongs }             포장 주문하기         <fmt:formatNumber value="${ chongp }" pattern="#,###" type="number" />원" id="submit" name="submit">
						</c:if> --%> 
						<input type="submit" value="" id="submit" name="submit">
						<input type="submit" id="nosubmit" value="<fmt:formatNumber value="${ clist.get(0).minorder }" type="number"/>원부터 주문할 수 있어요" id="nosubmit" name="nosubmit" disabled>
					</td>
				</tr>
			</table>
		</form>
	</c:if> 
	</section>
</body>
</html>