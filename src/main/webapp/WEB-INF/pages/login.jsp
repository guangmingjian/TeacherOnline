<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String contextPath = request.getContextPath();
%>
<!doctype html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">

		<title>Signin Template for Bootstrap</title>

		<!-- Bootstrap core CSS -->

		<!-- Custom styles for this template -->
		<link href="static/css/signin.css" rel="stylesheet">
		<link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
        <script src="static/js/jquery-3.2.1.js" type="text/javascript"></script>
        <script src="static/js/log.js" type="text/javascript"></script>
	</head>

	<body class="text-center">
		<form class="form-signin" action="/dolog" method="post">
			<img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
			<label for="inputEmail" class="sr-only">Email address</label>
			<input  type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
			<div id="input-tip" class="">

			</div>
			<label for="inputPassword" class="sr-only">Password</label>
			<input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
			<div class="checkbox mb-3">
				<label>
          <input type="checkbox" value="记住"> Remember me
        </label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
			<br />
			<div class="forgot login-footer">
				<span style="font-family: '楷体';">无账号?
                                 <a href="/reg">注册</a>
                            </span>
			</div>
			<p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
		</form>
	</body>

</html>