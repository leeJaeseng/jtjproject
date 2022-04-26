<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아두이노</title>
</head>
  <style>
.slideshow-container {

width: 100%;

height: 300px;

margin-top: 70px;

margin-left: 660px;

}

.Productioncrew {

margin-left: 400px;
margin-top: 30px;
}

.Arduino {
margin-left: 30px;
margin-top: 30px;
}

  </style>
 <script>
    var index = 0;   //이미지에 접근하는 인덱스
    window.onload = function(){
        slideShow();
    }
    
    function slideShow() {
    var i;
    var x = document.getElementsByClassName("slide1");  //slide1에 대한 dom 참조
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";   //처음에 전부 display를 none으로 한다.
    }
    index++;
    if (index > x.length) {
        index = 1;  //인덱스가 초과되면 1로 변경
    }   
    x[index-1].style.display = "block";  //해당 인덱스는 block으로
    setTimeout(slideShow, 2000);   //함수를 2초마다 호출
 
}
</script>
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
   <div class="container" style=margin-left:400px;>
    <header class="d-flex justify-content-center py-3">
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="/jtj/main.do" class="nav-link" aria-current="page">메인</a></li>
        <li class="nav-item"><a href="/introduction/intro.do" class="nav-link active">소개 페이지</a></li>
        <li class="nav-item"><a href="/app/app.do" class="nav-link">앱</a></li>
        <li class="nav-item"><a href="/board/list.do" class="nav-link">고객센터</a></li>
        <li class="nav-item"><a href="/monitoring/monitoring.do" class="nav-link">모니터링</a></li>
      </ul>
       <div class="col-lg-6">
     <div class="input-group" style="width:50%">
      <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
       <span class="input-group-btn" style=margin-left:11px;>
        <button class="btn btn-primary" type="button">검색</button>
      </span>
    </div><!-- /input-group -->
    </div><!-- /.col-lg-6 -->
    </header>
  </div>

 
  
  <div class="slideshow-container">
  <img class="slide1" src="/resources/img/s1.png">
  <img class="slide1" src="/resources/img/s2.png">
  <img class="slide1" src="/resources/img/s3.png">
  <img class="slide1" src="/resources/img/s4.png">
  <img class="slide1" src="/resources/img/c1.png">
</div>
</body>
</html>