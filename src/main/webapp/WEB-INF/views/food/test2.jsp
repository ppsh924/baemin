<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function callParent () {
    console.log("부모창에 있는 함수 call 호출");
    var msg = $('#sendMsg').val();
    if (msg == '') {
        alert('input창에 텍스트를 입력해주시기 바랍니다.');
        return;
    }
    opener.call(msg);
    window.close();
};

//enter키 누르면 callparent 함수 실행 되도록
$('#sendMsg').bind('keydown keypress', function (e) {
    if (e.which === 13) {
        callParent();
    }
});
</script>
</head>
<body>
<div class="page-header">
    <h1>window 객체 테스트<small>자식창</small></h1>
    <P>input 창에 텍스트 입력 후 버튼을 누르면 부모창에 있는 함수를 호출하고 텍스트를 넘김</P>
</div>

<input type="text" id="sendMsg">
<button class="btn btn-primary" onclick="callParent()">부모창 함수 호출</button>
</body>
</html>