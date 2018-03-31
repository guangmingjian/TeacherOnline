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
	
		<title>导师在线</title>

		<!-- Bootstrap core CSS -->
		<link href="static/css/bootstrap.min.css" rel="stylesheet">

		<!-- Custom styles for this template -->

		<link rel="stylesheet" href="static/css/carousel.css" />
		<link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
		<link href="static/css/font-awesome.min.css" rel="stylesheet">
		<link href="static/css/site.min.css" rel="stylesheet">
	</head>

	<body>

		<header>
			<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
				<a class="navbar-brand" style="font-family:'楷体';" href="#">导师在线</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#">主页 <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item ">
							<a class="nav-link" href="/blog">博客 <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/ques-index">问答</a>
						</li>
						<li class="nav-item">
							<a class="nav-link " href="/personal">个人中心</a>
						</li>
					</ul>
					<form class="form-inline mt-2 mt-md-0">
						<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</div>
			</nav>
		</header>

		<main role="main">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<!--<img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">-->
						<img class="first-slide" src="static/img/2.jpg" alt="First slide">
						<div class="container">
							<div class="carousel-caption text-left">
								<h1>最新资讯</h1>
								<p>这里有最新业界前沿导师的最近动态，导师整理心得体会的博文</p>
								<p>
									<a class="btn btn-lg btn-primary" href="/login" role="button">Sign up today</a>
								</p>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<img class="second-slide" src="static/img/3.jpg" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>历史问答</h1>
								<p>对用户问的问题进行归类，便于在相同或者相似的问题中获得灵感启发</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a>
								</p>
							</div>
						</div>
					</div>
					
					<div class="carousel-item">
						<img class="third-slide" src="static/img/4.jpg" alt="Third slide">
						<div class="container">
							<div class="carousel-caption text-right">
								<h1>问题发布</h1>
								<p>当您遇到了难以解决的问题时，可以发布悬赏，我们将您的信息第一时间公布出去。当有人有办法解决并提交了相应答案，您可以视情节予以采纳</p>
								<p>
									<a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

			<div class="container projects">

				<div class="projects-header page-header">
					<h2>优质在线学习文档推荐</h2>
					<!--<p>这些项目或者是对Bootstrap进行了有益的补充，或者是基于Bootstrap开发的</p>-->
				</div>

				<div class="row">

					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="http://codeguide.bootcss.com" title="Bootstrap 编码规范" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/codeguide.png?1519784809415" alt="Bootstrap 编码规范">
							</a>
							<div class="caption">
								<h3>
                <a href="http://codeguide.bootcss.com" title="Bootstrap 编码规范" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])">Bootstrap 编码规范<br><small>by @mdo</small></a>
            </h3>
								<p>Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="https://typescript.bootcss.com/" title="TypeScript 中文手册" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'typescript'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/typescript.png?1519784809415" alt="TypeScript 中文手册">
							</a>
							<div class="caption">
								<h3>
                <a href="https://typescript.bootcss.com/" title="TypeScript 中文手册" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'typescript'])">TypeScript <br><small>中文手册</small></a>
            </h3>
								<p>TypeScript 是由微软开源的编程语言。它是 JavaScript 的一个超集，而且本质上向这个语言添加了可选的静态类型和基于类的面向对象编程。</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="https://react.bootcss.com/" title="React - 用于构建用户界面的 JavaScript 框架" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'react'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/react.png?1519784809415" alt="React - 用于构建用户界面的 JavaScript 框架">
							</a>
							<div class="caption">
								<h3>
                <a href="https://react.bootcss.com/" title="React - 用于构建用户界面的 JavaScript 框架" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'react'])">React<br><small>用于构建用户界面的 JavaScript 框架</small></a>
            </h3>
								<p>React 起源于 Facebook 的内部项目，是一个用于构建用户界面的 JavaScript 库。</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="https://www.webpackjs.com/" title="Webpack 是前端资源模块化管理和打包工具" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/webpack.png?1519784809415" alt="Webpack 是前端资源模块化管理和打包工具">
							</a>
							<div class="caption">
								<h3>
                <a href="https://www.webpackjs.com/" title="Webpack 是前端资源模块化管理和打包工具" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">Webpack<br><small>是前端资源模块化管理和打包工具</small></a>
            </h3>
								<p>Webpack 是当下最热门的前端资源模块化管理和打包工具。它可以将许多松散的模块按照依赖和规则打包成符合生产环境部署的前端资源。</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="https://www.jquery123.com/" title="jQuery API 中文文档/手册" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'jQueryAPI中文手册'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/jqueryapi.png?1519784809415" alt="jQuery API 中文文档/手册">
							</a>
							<div class="caption">
								<h3>
                <a href="https://www.jquery123.com/" title="jQuery API 中文文档/手册" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'jQueryAPI中文手册'])">jQuery API <br><small>中文手册</small></a>
            </h3>
								<p>根据最新的 jQuery 1.11.x 和 2.1.x 版本翻译的 jQuery API 中文文档/手册。</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="https://www.quanzhanketang.com/" title="w3schools 原版国内镜像" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'w3schools'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/w3schools.png?1519784809415" alt="w3schools 原版国内镜像">
							</a>
							<div class="caption">
								<h3>
                <a href="https://www.quanzhanketang.com/" title="w3schools 原版国内镜像" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'w3schools'])">w3schools<br><small>原版国内镜像</small></a>
            </h3>
								<p>w3schools.com 是最受欢迎的前端技术教程网站，但是国内用户一直不能访问，并且国内的中文翻译版本十分陈旧。因此做了个镜像，希望英文好的同学直接去看原版教程吧！</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="https://preact.bootcss.com/" title="Preact - 一个只有 3kB 大小的 React 替代品，拥有与 React 相同的 API、组件和虚拟 DOM。" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'preact'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/preact.png?1519784809415" alt="Preact - 一个只有 3kB 大小的 React 替代品，拥有与 React 相同的 API、组件和虚拟 DOM。">
							</a>
							<div class="caption">
								<h3>
                <a href="https://preact.bootcss.com/" title="Preact - 一个只有 3kB 大小的 React 替代品，拥有与 React 相同的 API、组件和虚拟 DOM。" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'preact'])">Preact<br><small>React 轻量替代方案。</small></a>
            </h3>
								<p>Preact - 一个只有 3kB 大小的 React 替代品，拥有与 React 相同的 API、组件和虚拟 DOM。</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-3 ">
						<div class="thumbnail">
							<a href="https://www.nodeapp.cn/" title="Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境。Node.js 使用了一个事件驱动、非阻塞式 I/O 的模型，使其轻量又高效。" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'node'])">
								<img class="lazy" src="static/picture/null.png" width="300" height="150" data-src="https://static.bootcss.com/www/assets/img/nodejs.png?1519784809415" alt="Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境。Node.js 使用了一个事件驱动、非阻塞式 I/O 的模型，使其轻量又高效。">
							</a>
							<div class="caption">
								<h3>
                <a href="https://www.nodeapp.cn/" title="Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境。Node.js 使用了一个事件驱动、非阻塞式 I/O 的模型，使其轻量又高效。" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'node'])">Node.js<br><small>中文文档 / 手册</small></a>
            </h3>
								<p>Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境。Node.js 使用了一个事件驱动、非阻塞式 I/O 的模型，使其轻量又高效。</p>
							</div>
						</div>

					</div>
				</div>
				<!-- /.container -->

				<!-- FOOTER -->
				<footer class="container">
					<p class="float-right">
						<a href="#">返回上边</a>
					</p>
					<p>&copy; 2017-2018 Company, Inc. &middot;
						<a href="#">Privacy</a> &middot;
						<a href="#">Terms</a>
					</p>
				</footer>
            </div>
		</main>

		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
		<script src="static/js/jquery-slim.min.js"></script>
		<script>
			window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')
		</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/jquery.unveil.min.js"></script>
		<%--<script src="static/js/jquery.scrollup.min.js"></script>--%>
		<script src="static/js/toc.min.js"></script>
		<script src="static/js/jquery.matchheight-min.js"></script>
		<script src="static/js/site.min.js"></script>

	</body>

</html>