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
		<link href="static/bootstrap4.0/css/bootstrap-theme.css" rel="stylesheet" />
		<link href="static/css/bloghome.css" rel="stylesheet" rel="stylesheet" />
		<script src="static/bootstrap4.0/js/jquery-3.2.1.min.js"></script>
		<script src="static/bootstrap4.0/js/jquery-3.2.1.js"></script>
		<script src="static/bootstrap4.0/js/jquery-slim.min.js"></script>
		<script src="static/bootstrap4.0/js/bootstrap.min.js"></script>
		<script src="static/bootstrap4.0/js/popper.min.js"></script>
	</head>

	<body>
	<jsp:include page="../head/blog-head.jsp" flush="true"></jsp:include>

		<div class="container" id="main-body">
			<div class="row">
				<div class="col-7" id="body-left">
					<c:forEach items="${myArticles}" var="article">
					<div id="article">
						<h1 class="post-title"><a href="#" style="color: #303030;text-decoration:none;">${article.artTitle}</a></h1>

						<div class="post-meta">
							<span class="author">作者：<a href="/peopleHome?uId=${article.user.uId}" style="text-decoration:none;">${article.user.uName}</a></span> &bull;
							<time class="post-date" >${article.artDate}</time>
						</div>
						<br />
						<div class="post-content" style="text-align: left;">
							<p>&nbsp;&nbsp;&nbsp;&nbsp;${article.artSummary}</p>
						</div>

						<div class="post-permalink">
							<a href="/blogDetils?artId=${article.artId}"><button type="button" class="btn btn-success">阅读原文</button></a>
						</div>

						<footer class="post-footer clearfix">
							<div class="pull-left tag-list">
								<i class="fa fa-folder-open-o"></i>
								<a href="/fieldBlogs?caId=${article.artCateid}" style="color: #959595;">${article.category.cataName}</a>
							</div>
							<div class="pull-right share">
							</div>
						</footer>
					</div>
					</c:forEach>



				</div>
				<div class="col-4" id="body-right">
					<div class="widget">
						<h4 class="title">社区</h4>
						<div class="content community">
							<p>QQ群：277327792</p>
							<p>
								<a href="http://wenda.ghostchina.com/" title="Ghost中文网问答社区" target="_blank" onclick="_hmt.push(['_trackEvent', 'big-button', 'click', '问答社区'])"><i class="fa fa-comments "></i> 问答社区</a>
							</p>
							<p>
								<a href="http://weibo.com/ghostchinacom" title="Ghost中文网官方微博" target="_blank" onclick="_hmt.push(['_trackEvent', 'big-button', 'click', '官方微博'])"><i class="fa fa-weibo "></i> 官方微博</a>
							</p>
						</div>

					</div>
					
					<div class="widget" style="margin-top: 40px;">
							<h4 class="title">标签云</h4>
							<div class="content tag-cloud">
								<a href="/tag/ke-hu-duan/">客户端</a>
								<a href="/tag/android/">Android</a>
								<a href="/tag/jquery/">jQuery</a>
								<a href="/tag/ghost-0-7-ban-ben/">Ghost 0.7 版本</a>
								<a href="/tag/opensource/">开源</a>
								<a href="/tag/zhu-shou-han-shu/">助手函数</a>
								<a href="/tag/tag-cloud/">标签云</a>
								<a href="/tag/navigation/">导航</a>
								<a href="/tag/customize-page/">自定义页面</a>
								<a href="/tag/static-page/">静态页面</a>
								<a href="/tag/roon-io/">Roon.io</a>
								<a href="/tag/configuration/">配置文件</a>
								<a href="/tag/upyun/">又拍云存储</a>
								<a href="/tag/upload/">上传</a>
								<a href="/tag/handlebars/">Handlebars</a>
								<a href="/tag/email/">邮件</a>
								<a href="/tag/shortcut/">快捷键</a>
								<a href="/tag/yong-hu-zhi-nan/">用户指南</a>

								<a href="/tag-cloud/">...</a>
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
			</div>
	</body>

</html>