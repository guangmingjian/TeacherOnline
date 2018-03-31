<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="<%=contextPath%>/static/bootstrap4.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="<%=contextPath%>/static/bootstrap4.0/css/bootstrap.css" rel="stylesheet" />
		<link href="<%=contextPath%>/static/bootstrap4.0/css/bootstrap.min.css" rel="stylesheet" />
		<link href="<%=contextPath%>/static/css/bloghome.css" rel="stylesheet" rel="stylesheet" />
		<!--引入markdown开始-->
		<link rel="stylesheet" href="<%=contextPath%>/static/editormd/editormd.css" />
		<script src="<%=contextPath%>/static/editormd/tools/jquery.min.js"></script>
		<script src="<%=contextPath%>/static/editormd/editormd.js"></script>
		
		<script src="<%=contextPath%>/static/bootstrap4.0/js/jquery-3.2.1.js"></script>
		
		<script src="<%=contextPath%>/static/js/write/writerquestion.js"></script>
		<script  src="<%=contextPath%>/static/js/write/personal.js"></script>
		
	</head>

	<body>
		<a href="#">
			<span class="glyphicon glyphicon-folder-open"></span>
		</a>
		<header class="main-header"></header>

		<nav class="navbar navbar-expand-sm navbar-dark bg-dark" style="padding-left: 50px;">
			<a class="navbar-brand" href="#">博客专栏</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

			<div class="collapse navbar-collapse" id="navbarsExample03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="/index">主页 <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/myBlogs">我的博客</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/wri-blog">写博客</a>
					</li>
					<li class="nav-item">
						<a class="nav-link " href="#">查看博客</a>
					</li>
					<li class="nav-item">
						<a class="nav-link " href="/personal">个人中心</a>
					</li>
					
				</ul>
				<form class="form-inline my-2 my-md-0">
					<input class="form-control" type="text" placeholder="Search">
				</form>
			</div>
		</nav>

		<div class="container" id="main-body">
			<div class="row">
				<div class="col-8 " >
					<div class="card m-3">
						<div class="card-header">
							<h2>个人中心</h2>
						</div>
						<div class="card-body">

							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text" >邮箱</span>
								</div>
								<input id="email" type="text" class="form-control" value="${sessionScope.sess_user.uEmail}" disabled="true" >
							</div>
<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text" >密码</span>
								</div>
								<input id="password" type="password" class="form-control" value="${sessionScope.sess_user.uPassword}"  >
							</div>
							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="basic-addon1">姓名</span>
								</div>
								<input id="uName" type="text" class="form-control" value="${sessionScope.sess_user.uName}">
							</div>
							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text" >年龄</span>
								</div>
								<input id="age" type="text" class="form-control" value="${sessionScope.sess_user.uAge}">
							</div>
							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text">电话</span>
								</div>
								<input id="tel" type="text" class="form-control" value="${sessionScope.sess_user.uTel}">
							</div>
							
							
							<button type="submit" class="btn btn-success position-relative mb-1 " onclick="updateUser()">修改</button>
						</div>

					</div>

				</div>

			</div>

		</div>

		<!-- FOOTER -->
		<footer class="container" style="margin: 50px auto;  border-top: 1px solid #563d7c; padding: 20px;">
			<p class="float-right">
				<a href="#">back</a>
			</p>
			<p>&copy; 2017-2018 Company, Inc. &middot;
				<a href="#">Privacy</a> &middot;
				<a href="#">Terms</a>
			</p>
		</footer>
	</body>

</html>