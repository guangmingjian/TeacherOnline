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
		<link href="../static/bootstrap4.0/css/font-awesome.min.css" rel="stylesheet" />
		<link href="../static/bootstrap4.0/css/bootstrap.css" rel="stylesheet" />
		<link href="../static/bootstrap4.0/css/bootstrap.min.css" rel="stylesheet" />

		<link href="../static/css/bloghome.css" rel="stylesheet" rel="stylesheet" />
		<link href="../static/css/blogdetils.css" rel="stylesheet" rel="stylesheet" />
		<script src="../static/bootstrap4.0/js/jquery-3.2.1.js"></script>
		
	</head>

	<body>
    <jsp:include page="../head/admin-head.jsp" flush="true"></jsp:include>
		<div class="container" id="main-body">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							文章管理
						</div>
						<div class="card-body">
							<table class="table table-striped table-hover ">
								<thead>
									<tr>
										<th>序号</th>
										<th>标题</th>
										<th>作者</th>
										<th>发布时间</th>
										<th>查看</th>
										<th>删除</th>
									</tr>
								</thead>
								<tbody>
                                <%
                                    int counter = 0;
                                %>
                                <c:forEach items="${articles}" var="article">
                                    <%
                                        counter ++;
                                    %>
									<tr>
										<td style="width: 10%;"><%=counter%></td>
										<td style="width: 25%;">${article.artTitle}</td>
										<td style="width: 18%;">${article.user.uName}</td>
										<td style="width: 18%;">${article.artDate} </td>
										<th style="width: 10%;"> <a href="/article-detail?id=${article.artId}" class="btn btn-success text-light">查看</a></th>
										<th style="width: 10%;"> <a href="/doDeleteArt?id=${article.artId}" class="btn btn-danger text-light">删除</a></th>
									</tr>
                                </c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<script>
	
</script>
		
	</body>

</html>