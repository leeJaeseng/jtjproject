<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<style>
.listContainer {
 margin-left: 600px;
 margin-top: 40px;
}

</style>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<div class="container" style="margin-left: 450px;">
		<header class="d-flex justify-content-center py-3">
			<ul class="nav nav-pills">
				<li class="nav-item"><a href="/jtj/main.do" class="nav-link"
					aria-current="page">메인</a></li>
				<li class="nav-item"><a href="/introduction/intro.do"
					class="nav-link">소개 페이지</a></li>
				<li class="nav-item"><a href="/app/app.do" class="nav-link">앱</a></li>
				<li class="nav-item"><a href="/board/list.do"
					class="nav-link active">고객센터</a></li>
				<li class="nav-item"><a href="/monitoring/monitoring.do"
					class="nav-link">모니터링</a></li>
			</ul>
			<div class="col-lg-6">
				<div class="input-group" style="width: 50%">
					<input type="text" class="form-control" placeholder="검색어를 입력하세요.">
					<span class="input-group-btn" style="margin-left: 11px;">
						<button class="btn btn-primary" type="button">검색</button>
					</span>
				</div>
				<!-- /input-group -->
			</div>
			<!-- /.col-lg-6 -->
		</header>
	</div>
	<div class="listContainer">
	<form method="post">

		<label>제목</label> ${view.title}<br /> <label>작성자</label>
		${view.writer}<br /> <label>내용</label><br /> ${view.content}<br />
	</form>

	<div>
		<a href="/board/modify?bno=${view.bno}">게시물 수정</a>
		<a href="/board/delete?bno=${view.bno}">게시물 삭제</a>
	</div>
	</div>

</body>
</html>