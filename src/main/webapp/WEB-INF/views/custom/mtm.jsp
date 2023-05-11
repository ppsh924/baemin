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
	
	section input[type=text]{
		width:330px;
		height:35px;
		border:1px solid #ccc;	
		outline:none;
	}
	
	select {
		width:335px;
		height:35px;
		border:1px solid #ccc;
	}
		
	section textarea {
		width:330px;
		height:300px;
		border:1px solid #ccc;	
		outline:none;
		resize: none;
	}
	
	section input[type=checkbox]{
		width:25px;
		border:1px solid #ccc;	
		outline:none;
	}
		
	section input[type=submit]{
		width:336px;
		height:39px;
		background:#2ac1bc;
		border:1px solid #2ac1bc;
		color:white;
		font-size:16px;
		font-weight:900;
		margin-top:20px;
	}
	
	
</style>
</head>
<body>
	<section>
		<form method="post" action="mtm_ok">
		<table width="500" align="center">
			<caption><h2>아이디 문의하기</h2></caption>
			<tr height="40">
				<td width="200"><b>이름</b></td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr height="40">
				<td><b>아이디</b></td>
				<td><input type="text" name="userid" value="${ userid }"></td>
			</tr>
			<tr height="40">
				<td><b>상담분류</b></td>
				<td>
					<select name="class">
						<option value="0">선택 안 함</option>					
						<option value="1">B마트문의</option>					
						<option value="2">오류문의</option>					
						<option value="3">회원정보문의</option>					
						<option value="4">리뷰문의</option>					
						<option value="5">제휴문의</option>					
						<option value="6">업소정보문의</option>					
						<option value="7">이벤트</option>					
						<option value="8">기타</option>					
					</select>
				</td>
			</tr>
			<tr height="40">
				<td><b>제목</b></td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td><b>내용</b></td>
				<td>
					<textarea name="content"></textarea>
				</td>
			</tr>
			<tr height="40">
				<td><b>약관동의</b></td>
				<td><input type="checkbox" value="1">개인정보 수집 및 이용 동의</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="작성 완료">
				</td>	
			</tr>
		</table>
		</form>
	</section>
</body>
</html>