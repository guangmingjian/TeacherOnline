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
	<jsp:include page="../head/blog-head.jsp" flush="true"></jsp:include>

		<div class="container" id="main-body">
			<div class="row">
				<div class="col-10 m-3" id="body-left">
					<div class="card ">
						<div class="card-header">
							<h2>${blogDetil.artTitle}</h2>
							<a class="text-secondary" href="/peopleHome?uId=${blogDetil.user.uId}">${blogDetil.user.uName}</a>
							<span >•${blogDetil.artDate}</span>&nbsp;&nbsp;
							<span class="icon-th-list text-secondary">&nbsp;&nbsp;</span>
							<a href="/fieldBlogs?caId=${blogDetil.artCateid}" class="text-secondary">${blogDetil.category.cataName}</a>
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