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
							用户管理
						</div>
						<div class="card-body">
							<table class="table table-striped table-hover ">
								<thead>
									<tr>
										<th>序号</th>
										<th>邮箱</th>
										<th>密码</th>
										<th>姓名</th>
										<th>年龄</th>
										<th>电话</th>
										<th>个人领域</th>								
										<th>修改</th>
										<th>删除</th>
									</tr>
								</thead>
								<tbody>
                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td >1</td>
                                        <td >${user.uEmail}</td>
                                        <td >${user.uPassword}</td>
                                        <td >${user.uName}</td>
                                        <td >${user.uAge}</td>
                                        <td >${user.uTel}</td>
                                        <td >${user.field}</td>
                                        <th > <a class="btn btn-success text-light" href="/adUpdateUser?uId=${user.uId}">修改</a></th>
                                        <th > <a class="btn btn-danger text-light" href="/deleteUsers?uId=${user.uId}">删除</a></th>
                                    </tr>
                                </c:forEach>

									
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		

		
	</body>

</html>