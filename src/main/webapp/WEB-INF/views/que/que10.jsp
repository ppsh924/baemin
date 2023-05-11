<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  .tab_menu{position:relative;}
  .tab_menu .list{overflow:hidden;}
  .tab_menu .list li{float:left; margin-right:14px;}
  .tab_menu .list .btn{font-size:13px;}
  .tab_menu .list .cont{display:none; position:absolute; background:#555; color:#fff; text-align:center; width:250px; height:100px; line-height:100px;}
  .tab_menu .list li.is_on .btn{font-weight:bold; color:green;}
  .tab_menu .list li.is_on .cont{display:block;}
</style>
<script>
  const tabList = document.querySelectorAll('.tab_menu .list li');
  
  for(var i = 0; i < tabList.length; i++){
    tabList[i].querySelector('.btn').addEventListener('click', function(e){
      e.preventDefault();
      for(var j = 0; j < tabList.length; j++){
        tabList[j].classList.remove('is_on');
      }
      this.parentNode.classList.add('is_on');
    });
  }
</script>
</head>
<body>
<div class="tab_menu">
  <ul class="list">
    <li class="is_on">
      <a href="#tab1" class="btn">Tab Button1</a>
      <div id="tab1" class="cont">Tab Content1</div>
    </li>
    <li>
      <a href="#tab2" class="btn">Tab Button2</a>
      <div id="tab2" class="cont">Tab Content2</div>
    </li>
    <li>
      <a href="#tab3" class="btn">Tab Button3</a>
      <div id="tab3" class="cont">Tab Content3</div>
    </li>
  </ul>
</div>
</body>
</html>