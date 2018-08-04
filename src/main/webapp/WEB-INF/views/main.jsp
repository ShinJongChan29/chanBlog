<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome ChanBlog</title>
<style>
/*
 * Base structure
 */

/* Move down content because we have a fixed navbar that is 50px tall */

/*
 * Global add-ons
 */
a {
	cursor: pointer;
}

.sub-header {
	padding-bottom: 10px;
	border-bottom: 1px solid #eee;
}

/*
 * Top navigation
 * Hide default border to remove 1px line.
 */
.navbar-fixed-top {
	border: 0;
}

/*
 * Sidebar
 */

/* Hide for mobile, show later */
.sidebar {
	display: none;
}

@media ( min-width : 768px) {
	.sidebar {
		position: fixed;
		top: 102px;
		bottom: 0;
		left: 0;
		z-index: 10;
		display: block;
		padding: 20px;
		overflow-x: hidden;
		overflow-y: auto;
		/* Scrollable contents if viewport is shorter than content. */
		background-color: #f5f5f5;
		border-right: 1px solid #eee;
	}
}

/* Sidebar navigation */
.nav-sidebar {
	margin-right: -21px; /* 20px padding + 1px border */
	margin-bottom: 20px;
	margin-left: -20px;
}

.nav-sidebar>li>a {
	padding-right: 20px;
	padding-left: 20px;
}

.nav-sidebar>.active>a, .nav-sidebar>.active>a:hover, .nav-sidebar>.active>a:focus
	{
	color: #fff;
	background-color: #428bca;
}

/*
 * Main content
 */
.main {
	padding: 20px;
}

@media ( min-width : 768px) {
	.main {
		top: 102px;
		padding-right: 40px;
		padding-left: 40px;
	}
}

.main .page-header {
	margin-top: 0;
}

/*
 * Placeholder dashboard ideas
 */
.placeholders {
	margin-bottom: 30px;
	text-align: center;
}

.placeholders h4 {
	margin-bottom: 0;
}

.placeholder {
	margin-bottom: 20px;
}

.placeholder img {
	display: inline-block;
	border-radius: 50%;
}
</style>
<script type="text/javascript">
	$(function(){
		$('#join_id').blur('')
	});
</script>
</head>
<body>
	<div class="myHeader"
		style="position: fixed; width: 100%; z-index: 100;">
		<nav class="navbar navbar-default" style="margin-bottom: 0px">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a style="padding-top: 25%" class="navbar-brand" href="#"><span
						style="font-size: 27px">Chan Blog</span></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${path}/main">홈</a></li>
						<li><a href="#">전체보기</a></li>
						<li><a href="#">방명록</a></li>
						<li><a href="${path}/loginForm">로그인</a></li>
						<li><a data-toggle="modal" data-target="#joinFormView"
							id="joinBtn">회원가입</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<form class="navbar-form navbar-right" style="margin-right: 3%"
				role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">검색하기</button>
			</form>
		</nav>
	</div>

	<!-- sidebar -->




	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">

				<div class="row">
					<div class="thumbnail">
						<img src="${path}/resources/img/test3.jpg" alt="...">
						<div class="caption">
							<h5>방문해주셔서 감사합니다</h5>
						</div>
					</div>
				</div>

				<ul class="nav nav-sidebar" style="">
					<li class="active"><a href="#">전체보기</a></li>
					<li><a href="#">Spring</a></li>
					<li><a href="#">Java</a></li>
					<li><a href="#">HTML/CSS/Javascript</a></li>
					<li><a href="#">jQuery</a></li>
					<li><a href="#">Bootstrap</a></li>
					<li><a href="#">Oracle</a></li>
					<li><a href="#">MySql</a></li>
					<li><a href="#">MyBatis</a></li>

					<li><a href="#">설정방법</a></li>
					<li><a href="#">참고사이트</a></li>

				</ul>


				<!-- 			<ul class="nav nav-sidebar">
					<li><a href="">Nav item</a></li>
					<li><a href="">Nav item again</a></li>
				
				</ul> -->

			</div>

			<!-- main -->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<div class="imageClass"
					style="border: 1px solid blue; height: 360px; width: 100%; background-color: yellow">
					<img src="${path}/resources/img/test2.jpg" style="height: 100%">
				</div>
				<h1 class="page-header">Latest</h1>

				<div class="row placeholders">
					<div class="col-xs-6 col-sm-3 placeholder">


						<!-- test -->
						<div class="thumbnail">
							<span>[Spring]</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- test -->
					<div class="col-xs-6 col-sm-3 placeholder">
						<!-- test -->
						<div class="thumbnail">
							<span>제목:ㅁㅁㄴㅇㅁㄴㅇ</span> <a href="view?no=${list.a_no}"> </a>

							<div class="caption">
								<div style="height: 50px;">
									<h3 class="highlight">${list.a_subject}</h3>
								</div>
								<br>
								<div style="height: 30px;">
									<h4 align="left">
										제작 : <b class="highlight">${list.a_name}</b>
									</h4>
								</div>
								<br>
								<h5 align="left" style="font-style: italic">
									<a href="view?no=${list.a_no}" style="color: black;">view
										contents</a>
								</h5>
								<hr>
								<div class="row">
									<div class="offset-col-md-1 col-md-7">
										<p>
											<c:if test="${like_map[list.a_no]==null}">
												<a onclick="like(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
											<c:if test="${like_map[list.a_no]}">
												<a onclick="downlike(${list.a_no},${pb.currentPage})"><img
													src="" width="30px"
													height="30px"></a>
											</c:if>
										</p>
										<p>${list.a_goodcount}&nbsp;like</p>
									</div>
									<div class="col-md-3 offset-col-md-1">
										<p>
											<a href="view?no=${list.a_no}"><img
												src="" width="30px" height="30px"></a>
										</p>
										<p>${list.a_viewcount}&nbsp;views</p>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>

	<!-- modal -->
	<div id="modalView">
		<div id="joinModal">
			<!-- tabindex="-1" -->
			<div class="modal fade bs-example-modal-sm" id="joinFormView"
				role="dialog" aria-labelledby="exampleModalLongTitle"
				aria-hidden="true">
				<div class="modal-dialog" role="document" style="width: 40%">
					<div class="modal-content">
						<div class="modal-header">
							<!-- 닫기(x) 버튼 -->
							<button type="button" class="close" data-dismiss="modal">×</button>
							<!-- header title -->
							<h4 class="modal-title">회원가입</h4>
						</div>
						<!-- body -->
						<div class="modal-body">
							<div style="text-align: left">
								<form action="join" method="post" id="joinfrm">
									<span>아이디</span> <input type="text" name="m_id" id="join_id"
										class="form-control" autofocus="autofocus"> <span
										id="idChk" class="err"><br></span> <span>패스워드</span> <input
										type="password" name="m_password" id="join_password"
										class="form-control"> <span id="pwChk" class="err"><br></span>
									<span>패스워드확인</span> <input type="password" name="m_password2"
										id="join_password2" class="form-control"> <span
										id="pwChk2" class="err"><br></span> <span>닉네임</span> <input
										type="text" name="m_name" id="join_name" class="form-control">
									<span id="nameChk" class="err"><br></span> <span>이메일</span>
									<input type="text" name="m_email" id="join_email"
										class="form-control" placeholder="생략가능"> <span id="emailChk" class="err"><br></span>
									<span id="resultChk" class="err"><br></span>
									<button type="button" class="btn btn-primary" id="sub_btn">확인</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">닫기</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>