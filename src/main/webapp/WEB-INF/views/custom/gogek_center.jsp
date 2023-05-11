<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width:1000px;
		height:800px;
		margin:auto;
		font-family:sans-serif;
	}
	
	section table {
		margin-top:50px;
	}
	
	table {
		border-collapse:collapse;
		border:1px solid #ccc;	
	}
	
	table tr { height:80px; }
	
	td #name {
		display:inline-block;
		/* border:1px solid black; */
		margin-left:20px;
		margin-top:22px;
		font-size:23px;
		border-right:none;
	}
	
	#brothers {
		width:500px;
		margin:auto;
		margin-top:20px;
	}
	
	#elegant {
		color:#747474;
		font-size:16px;
	}
	
	#brother {
		color:#A6A6A6;
		font-size:14px;
	}
</style>
</head>
<body>
	<section>
		<table width="500" align="center" border="1">
			<caption><h2>고객센터</h2></caption>
			<tr>
				<td colspan="3">
					<span id="name">자주 묻는 질문</span>
					<span style="float:right;">
						<a href=""><img src="../resources/mybaemin/next.png" width="80"></a>
					</span>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<span id="name">실시간 채팅 상담</span>
					<span style="float:right;">
						<a href=""><img src="../resources/mybaemin/next.png" width="80"></a>
					</span>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<span id="name">아이디 문의</span>
					<span style="float:right;">
						<a href="../custom/mtm"><img src="../resources/mybaemin/next.png" width="80"></a>
					</span>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<span id="name">고객안심센터 상담</span>
					<span style="float:right;">
						<a href=""><img src="../resources/mybaemin/next.png" width="80"></a>
					</span>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<span id="name">안전거래센터 신고</span>
					<span style="float:right;">
						<a href=""><img src="../resources/mybaemin/next.png" width="80"></a>
					</span>
				</td>
			</tr>
		</table>
		<div id="brothers">
			<span id="elegant">(주)우아한형제들﹀</span> <p>
			<span id="brother">(주)우아한형제들은 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 따라서 (주)우아한형제들은 상품, 거래정보 및 거래에 대하여 책임을 지지 않습니다.</span>
		</div>		
	</section>
</body>
</html>