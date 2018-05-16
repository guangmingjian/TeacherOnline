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

    <script src="static/bootstrap4.0/js/jquery-3.2.1.js"></script>

</head>

<body>

<a href="#">
    <span class="glyphicon glyphicon-folder-open"></span>
</a>
<header class="main-header"></header>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark" style="padding-left: 50px;">
    <a class="navbar-brand" href="/blog">博客专栏</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExample03">
        <ul class="navbar-nav mr-auto">
            <li id="index" class="nav-item active">
                <a class="nav-link" href="/index">主页 <span class="sr-only">(current)</span></a>
            </li>
            <li id="myBlogs" class="nav-item">
                <a class="nav-link" href="/myBlogs">我的博客</a>
            </li>
            <li id="wri-blog" class="nav-item">
                <a class="nav-link" href="/wri-blog">写博客</a>
            </li>
            <li id="searchArticle" class="nav-item">
                <a class="nav-link " href="/searchArticle">查找博客</a>
            </li>
            <li id="ques-index" class="nav-item">
                <a class="nav-link " href="/ques-index">提问</a>
            </li>
            <li id="personal" class="nav-item">
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
<script>
    var href = location.href;
    var id = href.substring(href.lastIndexOf("/") + 1, href.length);
    if (id=="") {
        id = "index";
    }
    var ids = ["index", "myBlogs", "wri-blog", "searchArticle","ques-index", "personal"];
    for (var i = 0; i < ids.length; i++) {
        if (id == ids[i]) {
            $("#" + id).attr("class", "active");
        } else {
            $("#" + ids[i]).removeAttr("class");
        }
    }
</script>

</body>

</html>