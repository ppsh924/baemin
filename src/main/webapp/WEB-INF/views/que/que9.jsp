<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
 	section {
		width: 1000px;
		margin: auto;
		text-align: center;
		margin-bottom: 700px;
		font-family: sans-serif;
		margin-top: 50px;
	}
	
	section table {
		margin-top: 50px;
		/* background: white; */
		/* box-shadow: 0px 3px 6px #ccc; */
		border-spacing: 0px; /* 셀과 셀의 공간 */
		/* border:1px solid #F6F6F6; */
		font-size: 18px;
		padding: 10px;
	}
	
	section input[type=button] {
		width:130px;
		height:50px;
		color:white;
		font-size:18px;
		font-weight:700;
		background:#2ac1bc;
		border:1px solid #2ac1bc;
		border-radius:25px;
	}
</style>
</head>
<body>
<section>
	<table width="600" align="center">
		<caption><h2>실시간 채팅상담</h2></caption>
		<tr>
			<td>
				<img src="../resources/mybaemin/man.png" width="300">
			</td>
		</tr>
		<tr>
			<td>
				상담하기 버튼을 누르시면 <br>
				새로운 상담이 시작됩니다.	
			</td>
		</tr>
		<tr height="150">
			<td></td>
		</tr>
		<tr>
			<td align="right">
				<input type="button" value="상담하기">
			</td>
		</tr>
	</table>
</section>	
</body>
</html>