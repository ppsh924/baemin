<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	@font-face {
	    font-family: 'Cafe24Shiningstar';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Shiningstar.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	section {
		width:1000px;
		height:1200px;
		margin:auto;
		font-family:sans-serif;
	}
	
	section table {
		margin-top:50px;
		border-collapse:collapse; 
		border:1px solid #ccc;
	}
	
	table td img { width:100px; }
	td #profile {
		position:relative;
		/* border:1px solid black; */
	}
	td #name {
		display:inline-block;
		/* border:1px solid black; */
		position:absolute;
		margin-top:35px;
		font-size:20px;
		border-right:none;
	}
	
	table #thanks {
		height:60px;
	    position:relative;
	    padding-left:5px;
	}
	
	table #level {
		position:absolute;
		font-family: 'Cafe24Shiningstar';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.1/Cafe24Shiningstar.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	    margin-top:20px;
	    font-size:20px;
	    padding-left:5px;
	}
	
	table input[type=button]{
		width:130px;
		border-radius:15px;
		backgroung:#D5D5D5;
		border:1px solid #D5D5D5;
		margin-right:10px;
		font-size:20px;
	}
	
	td #name {
		display:inline-block;
		/* border:1px solid black; */
		margin-left:20px;
		margin-top:30px;
		font-size:25px;
		border-right:none;
	}
</style>
<script>
   window.onload=function()
   {
	    var cnt=document.getElementById("cnt").value;
	    if(cnt<5)
	    {	
		    document.getElementById("nam").innerText="고마운분,";
		    document.getElementById("level").innerText="고마운 분 출두요~!";
		    document.getElementById("thanks").src="../resources/mybaemin/level.png";
	    }
	    else if(cnt<9)
	    {
		    document.getElementById("nam").innerText="귀한분,";
		    document.getElementById("level").innerText="귀한분 출두요~!";
		    document.getElementById("thanks").src="../resources/mybaemin/dongdong.JPG";
	    }
	    else if(cnt<20)
	    {
		    document.getElementById("nam").innerText="더귀한분,";
		    document.getElementById("level").innerText="더귀한분 출두요~!";
		    document.getElementById("thanks").src="../resources/mybaemin/silversilver.JPG";
	    }	
	   else if(cnt>=20)
	    {
		    document.getElementById("nam").innerText="천생연분,";
		    document.getElementById("level").innerText="천생연분 출두요~!";
		    document.getElementById("thanks").src="../resources/mybaemin/goldgold.JPG";
	    }
   }   
</script>
</head>
<body>
	<section>
		<table width="600" align="center" border="1">
		 <input type="hidden" class="cnt" id="cnt" value="${cnt}">
			<caption><h2>My배민</h2></caption>
			<tr height="50">
				<td colspan="3">
					<img id="profile" src="../resources/mybaemin/profile.png">
					<span id="name"><span id="nam" style="color:#8C8C8C;">고마운분,</span>${ mvo.name }</span>
					<span style="float:right;">
						<a href="member_edit"><img src="../resources/mybaemin/next.png" width="10"></a>
					</span>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<img  id="thanks" src="../resources/mybaemin/level.png">
					<span id="level">고마운분 출두요~!</span>
					<input style="float:right;margin-top:15px;" type="button" onclick="location='member_level'" value="등급별 혜택">
				</td>
			</tr>
			<tr align="center">
				<td width="200"><img src="../resources/mybaemin/point.png"></td>
				<td width="200"><img src="../resources/mybaemin/coupon.png"></td>
				<td width="200"><img src="../resources/mybaemin/present.png"></td>
			</tr>
		    <tr align="center">
				<td><img src="../resources/mybaemin/wish.png" onclick="location='../mybaemin/wishview'"></td>
				<td><img src="../resources/mybaemin/order_list.png" onclick="location='../mybaemin/jumunview'"></td>
				<td><img src="../resources/mybaemin/review.png" onclick="location='../mybaemin/reviewlist'"></td>
			</tr>
		</table>

		<table width="600" align="center" border="1">
			<tr height="50">
				<td colspan="3">
					<span id="name">공지사항</span>
					<span style="float:right;">
						<a href="../gongji/list"><img src="../resources/mybaemin/next.png" width="50"></a>
					</span>
				</td>
			</tr>
			<tr height="50">
            <td colspan="3">
               <span id="name">이벤트</span>
               <span style="float:right;">
                  <a href="../member/event"><img src="../resources/mybaemin/next.png" width="50"></a>
               </span>
            </td>
         </tr>
			<tr height="50">
				<td colspan="3">
					<span id="name">고객센터</span>
					<span style="float:right;">
						<a href="../manto/gogek_center"><img src="../resources/mybaemin/next.png" width="50"></a>
					</span>
				</td>
			</tr>
			<tr height="50">
				<td colspan="3">
					<span id="name">환경설정</span>
					<span style="float:right;">
						<a href=""><img src="../resources/mybaemin/next.png" width="50"></a>
					</span>
				</td>
			</tr>
			<tr height="50">
				<td colspan="3">
					<span id="name">약관 및 정책</span>
					<span style="float:right;">
						<a href=""><img src="../resources/mybaemin/next.png" width="50"></a>
					</span>
				</td>
			</tr>
		</table>	
	</section>
</body>
</html>