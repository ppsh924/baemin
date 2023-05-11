    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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

section #pkc {
	margin-top: 50px;
	/* background: white; */
	/* box-shadow: 0px 3px 6px #ccc; */
	border-spacing: 0px; /* 셀과 셀의 공간 */
	/* border:1px solid #F6F6F6; */
	font-size: 18px;
	padding: 10px;
}

#gfirst {
	width: 920px;
	height: 28px;
	background: white;
	color: black;
	margin: auto;
	padding-top: 30px;
	font-family: sans-serif;
	padding-bottom: 60px;
}

#gfirst #gleft {
	width: 80px;
	height: 28px;
	float: left;
	text-align: left;
	margin-left: -30px;
	
}

#gfirst #gmiddle {
	width: 810px;
	height: 28px;
	float: middle;
	text-align: center;
	font-size: 30px;
}

#gfirst #gright {
	width: 500px;
	height: 28px;
	float: right;
	text-align: right;
	margin-top: -23px;
	margin-right: -40px;
}



#ca {
	display: inline-block;
	width: 350px;
	height: 30px;
	border: 1px solid #D5D5D5;
	background: #D5D5D5;
	color: white;
	text-align: center;
	font-size: 16px;
	padding-top: 10px;
}

input[type=checkbox] {
	visibility: hidden;
	margin-left:-5px;
}

span #sai {
	background: pink
}

section input[type=text] {
	width: 360px;
	height: 35px;
	border: 1px solid #ccc;
	outline: none;
}

select {
	width: 365px;
	height: 35px;
	border: 1px solid #ccc;
}

section textarea {
	width: 360px;
	height: 300px;
	border: 1px solid #ccc;
	outline: none;
	resize: none;
}

section input[type=submit] {
	margin-top: 30px;
	width: 428px;
	height: 50px;
	font-size: 24px;
	border: 1px solid #2ac1bc;
	background: #2ac1bc;
	color: white;
	font-weight: 900;
	border-radius: 5px;
}


#rt {
	font-size: 13px;
}

#gsecond {
	width: 500px;
	height: 20px;
	color: #BDBDBD;
	margin: auto;
	font-size: 20px;
	padding-bottom: 10px;
	font-family: sans-serif;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
		$(function() {
			$("#gleft").click(function() {
				$("#gleft").css("color", "black"); //속성을 변경할 수 있게 해주는 toggleClass  	   
			});
			$("#gleft").click(function() {
				$("#gleft").css("color", "#BDBDBD");
			});
		});
		
		function check2(my) {
			if (document.pkc.che.checked) {
				document.pkc.che.checked = false;
				my.style.background = "#D5D5D5";
			} else {
				document.pkc.che.checked = true;
				my.style.background = "#2ac1bc";
			}
		}

		function len_check(my) {
			document.getElementById("len").innerText = my.length;
		}

		/*  function check()
		 {
		 	var chek=document.pkc.chek.checked;
		 	alert(chek);
		 }  */
		function form_check() {
			var que = document.pkc.que.value;
			var che = document.pkc.che.checked;
			if (que == 8) {
				alert("문의 정보를 선택해주세요")
				return false;
			} else if (che == false) {
				alert("문의를 보내려면 약관에 동의하셔야합니다")
				return false;
			} else {

				return true;

			}
		}

		function mun() {
			location = "/baemin/manto/write";
		}

		function mun2() {
			location = "/baemin/manto/list";
		}
</script>
</head>
<body>
<section>
	<table width="600" align="center">
	<caption><h1>이메일 문의</h1></caption>
		<tr height="70">
	   		<td align="center" width="300">
				<span id="gleft" onclick="mun()" style="cursor:pointer;color:black;text-decoration: underline;text-underline-position:under;font-size:20px">이메일 문의하기</span>
			</td>
			<td align="center" width="300">
				<span id="gright" onclick="mun2()" style="cursor:pointer;color:#BDBDBD;font-size:20px">나의 문의 내역</span>
			</td>	
	    </tr>
     </table>
     
     <form name="pkc" method="post" action="write_ok" enctype="multipart/form-data" onsubmit="return form_check()">
     <table id="pkc" width="600" align="center">
        <c:if test="${userid == null}">
        <span id="bc"> 질문하기는 로그인 후 가능합니다. </span>
        </c:if>
        <c:if test="${userid != null}">
        <tr>
          <td width="200" align="left"> 이름 </td>
          <td> <input type="text" name="name"></td>
         </tr>          
         <tr> 
          <td align="left"> 이메일 </td>
          <td> <input type="text" name="email"></td>
        </tr>
        <tr>
           <td align="left"> 상담분류 </td>
           <td>
             <select id="que" name="que">
               <option value="8"> 선택안함 </option>
               <option value="0"> B마트문의 </option>
               <option value="1"> 오류문의</option>
               <option value="2"> 회원정보 </option>
               <option value="3"> 리뷰문의 </option>
               <option value="4"> 제휴문의 </option>
               <option value="5"> 업소정보문의 </option>
               <option value="6"> 이벤트문의 </option>
               <option value="7"> 기타 </option>
             </select>
           </td>
        </tr>
         <tr> 
          <td align="left"> 제목 </td>
          <td> <input type="text" name="title"></td>
        </tr>
        <tr>
          <td align="left"> 문의내용 <br> (<span id="len" style="color:red;"> </span>자) </td>
          <td> <textarea name="content" id="content" maxlength="99" onkeyup="len_check(this.value)"></textarea></td>
        </tr>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
         <tr style="padding-left:10px;"> 
          <td align="left"> 첨부파일 </td>
          <td align="left" style="padding-left:10px;">
               <div> &nbsp;</div>
          	   <input type="file" name="fname"><p>
               <input type="file" name="fname2"><p> 
               <input type="file" name="fname3"><p>  
                <span id="rt">이미지 파일(GIF,PNG,JPG)을 기준으로 이미지 당 10MB <br>
                                이하, 최대 3개까지 등록 가능합니다.</span>             
          </td>
        </tr>
    
         <tr> 
          <td align="left"> 약관동의 </td>
          <td align="left"> <input type="checkbox" name="che"><span id="ca" onclick="check2(this)"> ѵ 개인정보 수집 및 이용 동의</span></td>
        </tr>        
        <tr>
          <td colspan="2" align="center">
            <input type="submit" value="질문저장" id="submit"> 
          </td>
         </tr>
      	</c:if> 
      </table>
   </form>
</section>    
</body>
</html>
    
