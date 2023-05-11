<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
*{margin:0; padding:0;}
.wrap{width:1100px; margin:0 auto;}
.header{height:200px; background:palegreen;}
.content{position:relative;}
.content:after{display:block; clear:both; content:'';}
.main{float:left; margin-right:10px; background:skyblue; width:790px; height:1500px;}
.wing{overflow:hidden;}
.wing .inner{width:300px; height:300px; background:plum;}
.wing.fixed .inner{position:fixed; top:0;}
</style>
<script>
const content = document.querySelector('.content');
const wing = document.querySelector('.wing');

// 컨텐츠 영역부터 브라우저 최상단까지의 길이 구하기
const contentTop = content.getBoundingClientRect().top + window.scrollY;

window.addEventListener('scroll', function(){
  if(window.scrollY >= contentTop){
    wing.classList.add('fixed');
  }else{
    wing.classList.remove('fixed');
  }
});
</script>

<div class="wrap">
  <div class="header">
    Header
  </div>

  <div class="content">
    <div class="main">
      Main Area
    </div>

    <div class="wing">
      <div class="inner">
        Wing Banner
      </div>
    </div>
  </div>
</div>
	
</html>