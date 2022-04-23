<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  <jsp:include page="/WEB-INF/views/include/header.jsp"/>
    
    <div class="container">
    <header class="d-flex justify-content-center py-3">
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="/jtj/main.do" class="nav-link active" aria-current="page">메인</a></li>
        <li class="nav-item"><a href="/introduction/intro.do" class="nav-link">소개 페이지</a></li>
        <li class="nav-item"><a href="/app/app.do" class="nav-link">앱</a></li>
        <li class="nav-item"><a href="/board/list.do" class="nav-link">고객센터</a></li>
        <li class="nav-item"><a href="/monitoring/monitoring.do" class="nav-link">모니터링</a></li>
      </ul>
    </header>

   
  </div>

  </body>
</html>