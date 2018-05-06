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
		<!--引入markdown开始-->
		<link rel="stylesheet" href="static/editormd/editormd.css" />
		<script src="static/editormd/tools/jquery.min.js"></script>
		<script src="static/editormd/editormd.js"></script>
		<!--引入markdown结束-->
		<%--<script src="static/bootstrap4.0/js/jquery-3.2.1.min.js"></script>--%>
		<script src="static/bootstrap4.0/js/jquery-3.2.1.js"></script>
		<%--<script src="static/bootstrap4.0/js/jquery-slim.min.js"></script>--%>
		<script src="static/bootstrap4.0/js/bootstrap.min.js"></script>
		<%--<script src="static/bootstrap4.0/js/popper.min.js"></script>--%>
		<script src="static/js/write/writerquestion.js"></script>

	</head>

	<body>
	<jsp:include page="../head/blog-head.jsp" flush="true"></jsp:include>

		<div class="container" id="main-body">
			<div class="row">
				<div class="col-11" id="body-left">
					<div class="card m-3">
						<div class="card-header">
							<h2>请写下你的博客</h2>
						</div>
						<div class="card-body">

							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">
									<span class="input-group-text" >标题</span>
								</div>
								<input id="art-title" type="text" class="form-control" placeholder="请输入标题">
							</div>

							<div class="input-group mb-3 my-5">
								<div class="input-group-prepend">
									<span class="input-group-text" >分类</span>
								</div>
								<select id="cata" class="form-control" style="width: 80%;">
									<option>java</option>
									<option>bootstrap</option>
									<option>javaweb</option>
									<option>springmvc</option>
								</select>

							</div>
							<div class="input-group mb-3 mt-3">
								<div class="input-group-prepend">

								</div>
								<span class="input-group-text" id="basic-addon1">概括</span>
								<textarea id="summary" type="text" class="form-control" placeholder="内容概括 :  最多150字" maxlength="150"></textarea>
							</div>
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
                                <textarea class="editormd-html-textarea" name="text" id="editormdhtml"></textarea>

							</div>
							<button class="btn btn-success position-relative mb-1 " type="submit" onclick="sub_form()">发布博客</button>
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