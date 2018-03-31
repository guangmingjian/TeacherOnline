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
		<link href="static/bootstrap4.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="static/bootstrap4.0/css/bootstrap.css" rel="stylesheet" />
		<link href="static/bootstrap4.0/css/bootstrap.min.css" rel="stylesheet" />

		<link href="static/css/bloghome.css" rel="stylesheet" rel="stylesheet" />
		<link href="static/css/blogdetils.css" rel="stylesheet" rel="stylesheet" />
				<script src="static/bootstrap4.0/js/jquery-3.2.1.js"></script>
		<!--引入markdown开始-->
		<link rel="stylesheet" href="static/editormd/editormd.css" />
		<script src="static/editormd/tools/jquery.min.js"></script>
		<script src="static/editormd/editormd.js"></script>
		<!--引入markdown结束-->
	
		
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
						<a class="nav-link" href="#">主页 <span class="sr-only">(current)</span></a>
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
					<!--<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="dropdown03">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>-->
				</ul>
				<form class="form-inline my-2 my-md-0">
					<input class="form-control" type="text" placeholder="Search">
				</form>
			</div>
		</nav>

		<div class="container" id="main-body">
			<div class="row">
				<div class="col-10 m-3" id="body-left">
					<div class="card ">
						<div class="card-header">
							<h2>${blogDetil.artTitle}</h2>
							<a class="text-secondary" href="#">${blogDetil.user.uName}</a>
							<span >•${blogDetil.artDate}</span>&nbsp;&nbsp;
							<span class="icon-th-list text-secondary">&nbsp;&nbsp;</span>
							<a href="#" class="text-secondary">${blogDetil.category.cataName}</a>
						</div>
						<div class="card-body">

							

							<div id="blog-html" class="text-left p-3 mx-3" >
                                ${blogDetil.artHtml}
							</div>
							
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
		
		<script src="static/js/write/markhtml.js"></script>
	</body>

</html>