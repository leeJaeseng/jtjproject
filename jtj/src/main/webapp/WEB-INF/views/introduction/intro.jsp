<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>소개 페이지</title>
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

<body>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
   <div class="container" style=margin-left:450px;>
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
  
  <div class="select-container">

  <a href="/introduction/Productioncrew.do"><img class="Productioncrew" src="/resources/img/Productioncrew.png"></a>
  <a href="/introduction/Arduino.do"><img class="Arduino" src="/resources/img/Arduino.png"></a>
  
  </div>


</body>
</html>