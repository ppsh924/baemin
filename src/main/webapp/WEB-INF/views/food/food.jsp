<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
   <%@ include file="../admin/admintop.jsp" %>

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
		width: 336px;
		height: 39px;
		background: #2ac1bc;
		border: 1px solid #2ac1bc;
		color: white;
		font-size: 16px;
		font-weight: 900;
		margin-top:30px;
	}
</style>
<script>
	function gencode(daecode){
		var chk = new XMLHttpRequest();
		var fcode = "f" + daecode;
		// alert(fcode);
		chk.onload=function(){
			
			var num = chk.responseText;
			// alert(num);
			if(num.length == 1)
				num = "00" + num;
			else if(num.length == 2)
				num = "0" + num;
			
			document.f.fcode.value = fcode + num;
		}
		chk.open("get", "getcode?fcode="+fcode);
		chk.send();
	}
</script>
</head>
<body>
	<section>
		<form name="f" method="post" action="food_ok" enctype="multipart/form-data">
			<table width="600" align="center">
				<caption><h3>음식점 등록</h3></caption>
				<tr>
					<td>가게코드</td>
					<td>
						<input type="text" name="fcode" id="fcode" readonly>
						<select id="dae" name="dae" onchange="gencode(this.value)">
							<option>분류</option>
							<c:forEach items="${ dae }" var="dvo">
								<option value="${ dvo.code }">${ dvo.name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>메인이미지</td>
					<td><input type="file" name="fimg"></td>
				</tr>
				<tr>
					<td>상호명</td>
					<td><input type="text" name="shop"></td>
				</tr>
				<tr>
					<td>최소주문금액</td>
					<td><input type="text" name="minorder"></td>
				</tr>
				<tr>
					<td>배달팁</td>
					<td><input type="text" name="baeprice"></td>
				</tr>
				<tr>
					<td>배달시간</td>
					<td><input type="text" name="baetime"></td>
				</tr>
				<tr>
					<td>가게주소</td>
					<td><input type="text" name="juso"></td>
				</tr>
				<tr>
					<td>가게소개</td>
					<td>
						<textarea name="shop_sogae" id="textarea"></textarea>
					</td>
				</tr>
				<tr>
					<td>운영시간</td>
					<td><input type="text" name="hours"></td>
				</tr>
				<tr>
					<td>휴무일</td>
					<td><input type="text" name="holiday"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>배달지역</td>
					<td><input type="text" name="area"></td>
				</tr>
				<tr>
					<td>대표자명</td>
					<td><input type="text" name="boss"></td>
				</tr>
				<tr>
					<td>사업자등록번호</td>
					<td><input type="text" name="regi_number"></td>
				</tr>
				<tr>
					<td>안내 및 혜택</td>
					<td>
						<textarea name="benefit" id="textarea"></textarea>
					</td>
				</tr>
				<tr>
					<td>최근 주문수</td>
					<td><input type="text" name="recent_orders"></td>
				</tr>
				<tr>
					<td>전체 리뷰수</td>
					<td><input type="text" name="total_orders"></td>
				</tr>
				<tr>
					<td>찜</td>
					<td><input type="text" name="wish"></td>
				</tr>
				<tr>
					<td>사장님 공지</td>
					<td>
						<textarea name="boss_gongji" id="textarea"></textarea>
					</td>
				</tr>
				<tr>
					<td>사장님 한마디</td>
					<td>
						<textarea name="boss_one" id="textarea"></textarea>
					</td>
				</tr>
				<tr>
					<td>1인분</td>
					<td><input type="checkbox" name="state" value="1"></td>
				</tr>
				<tr>
					<td>프랜차이즈</td>
					<td><input type="checkbox" name="fran" value="1"></td>
				</tr>
				<tr>
					<td>메뉴1</td>
					<td><input type="text" name="m1"></td>
				</tr>
				<tr>
					<td>메뉴1 사진</td>
					<td><input type="file" name="m1_img"></td>
				</tr>
				<tr>
					<td>메뉴1 설명</td>
					<td><input type="text" name="m1_ex"></td>
				</tr>
				<tr>
					<td>메뉴1 가격</td>
					<td><input type="text" name="m1_price"></td>
				</tr>
				<tr>
					<td>메뉴1 수량</td>
					<td><input type="text" name="m1_su" value="100"></td>
				</tr>
				<tr>
					<td>메뉴2</td>
					<td><input type="text" name="m2"></td>
				</tr>
				<tr>
					<td>메뉴2 사진</td>
					<td><input type="file" name="m2_img"></td>
				</tr>
				<tr>
					<td>메뉴2 설명</td>
					<td><input type="text" name="m2_ex"></td>
				</tr>
				<tr>
					<td>메뉴2 가격</td>
					<td><input type="text" name="m2_price"></td>
				</tr>
				<tr>
					<td>메뉴2 수량</td>
					<td><input type="text" name="m2_su" value="100"></td>
				</tr>
				<tr>
					<td>메뉴3</td>
					<td><input type="text" name="m3"></td>
				</tr>
				<tr>
					<td>메뉴3 사진</td>
					<td><input type="file" name="m3_img"></td>
				</tr>
				<tr>
					<td>메뉴3 설명</td>
					<td><input type="text" name="m3_ex"></td>
				</tr>
				<tr>
					<td>메뉴3 가격</td>
					<td><input type="text" name="m3_price"></td>
				</tr>
				<tr>
					<td>메뉴3 수량</td>
					<td><input type="text" name="m3_su" value="100"></td>
				</tr>
				<tr>
					<td>메뉴4</td>
					<td><input type="text" name="m4"></td>
				</tr>
				<tr>
					<td>메뉴4 사진</td>
					<td><input type="file" name="m4_img"></td>
				</tr>
				<tr>
					<td>메뉴4 설명</td>
					<td><input type="text" name="m4_ex"></td>
				</tr>
				<tr>
					<td>메뉴4 가격</td>
					<td><input type="text" name="m4_price"></td>
				</tr>
				<tr>
					<td>메뉴4 수량</td>
					<td><input type="text" name="m4_su" value="100"></td>
				</tr>
				<tr>
					<td>메뉴5</td>
					<td><input type="text" name="m5"></td>
				</tr>
				<tr>
					<td>메뉴5 사진</td>
					<td><input type="file" name="m5_img"></td>
				</tr>
				<tr>
					<td>메뉴5 설명</td>
					<td><input type="text" name="m5_ex"></td>
				</tr>
				<tr>
					<td>메뉴5 가격</td>
					<td><input type="text" name="m5_price"></td>
				</tr>
				<tr>
					<td>메뉴5 수량</td>
					<td><input type="text" name="m5_su" value="100"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="음식점 등록">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>