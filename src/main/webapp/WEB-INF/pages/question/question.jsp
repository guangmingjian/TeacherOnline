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

		<link href="static/bootstrap4.0/css/bootstrap.css" rel="stylesheet" />
		<link href="static/bootstrap4.0/css/bootstrap.min.css" rel="stylesheet" />
		
		<link href="static/css/bloghome.css" rel="stylesheet" rel="stylesheet" />
		<link href="static/bootstrap4.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="static/css/question.css" rel="stylesheet" />
		<link href="static/css/que_content.css" rel="stylesheet" />
		<script src="static/bootstrap4.0/js/jquery-3.2.1.js"></script>
		<script src="static/js/que_content.js"></script>
		<!--引入markdown开始-->
		<link rel="stylesheet" href="static/editormd/editormd.css" />
		<script src="static/editormd/tools/jquery.min.js"></script>
		<script src="static/editormd/editormd.js"></script>
		<!--引入markdown结束-->
		<script src="static/js/write/sub_questions.js"></script>
	</head>

	<body>


		<jsp:include page="../head/question-head.jsp" flush="true"></jsp:include>
		<div class="container" id="main-body">
			<div class="row">
				<div class="col-7" id="body-left">
					<div class="card m-3">
						<div class="card-header">
							<h2>请写下你的问题</h2>
						</div>
						<div class="card-body">
							<div class="card-title text-dark">描述精确的问题更易得到解答</div>

							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text" >标题</span>
								</div>
								<input id="title" type="text" class="form-control" placeholder="请输入标题">
							</div>

							<div class="input-group mb-3 my-5">
								<div class="input-group-prepend">
									<span class="input-group-text" >话题</span>
								</div>
								<select id="type" class="form-control" style="width: 80%;">
									<option>心理学</option>
									<option>医学</option>
									<option>理财</option>
									<option>保险</option>
								</select>

							</div>
							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text" >价格</span>
								</div>
								<input id="value" type="text" class="form-control " placeholder="请输入价格">
								</div>
							<span class="my-2 h5">问题描述</span><br /><br />
							
							<div class="btns" class="my-2">
								<button id="show-btn">显示</button>
								<button id="hide-btn">隐藏</button>
								<button id="get-md-btn">查看md</button>
								<button id="get-html-btn">查看html</button>
								<button id="watch-btn">预览</button>
								<button id="unwatch-btn">关闭预览</button>
								<button id="preview-btn">预览html</button>
								<button id="fullscreen-btn">全屏 (esc 退出)</button>
								<button id="show-toolbar-btn">显示工具条</button>
								<button id="close-toolbar-btn">隐藏工具条</button>
							</div>

							<div id="test-editormd" class="mx-2">
								<textarea style="display:none;">#### Using FlowChart

setting:

    {
        flowChart : true
    }

#### Example

```flow
st=>start: User login
op=>operation: Operation
cond=>condition: Successful Yes or No?
e=>end: Into admin

st->op->cond
cond(yes)->e
cond(no)->op
```</textarea>

							</div>

							<button class="btn btn-success mt-2 mb-5" onclick="sub_question()">提交问题</button>
						</div>
					</div>

				</div>
				<!--搜索主体结束-->

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

						<div class="quick-tool">
							<a href="#">
								<p class="icon-book"></p>提问
							</a>
							<br />
							<a href="#">
								<p class="icon-user"></p>关注的人
							</a>
							<br />
							<a href="#">
								<p class="icon-reply"></p>我的邀请
							</a>
							<br />
							<a href="#">
								<p class="icon-edit"></p>写文章
							</a>
							<br />
							<a href="#">
								<p class="icon-inbox"></p>社区服务中心
							</a>
							<br />
							<a href="#">
								<p class=" icon-exclamation-sign"></p>版权服务中心
							</a>

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