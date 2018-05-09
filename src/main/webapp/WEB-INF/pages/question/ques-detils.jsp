<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="static/bootstrap4.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="static/bootstrap4.0/css/bootstrap.css" rel="stylesheet"/>
    <link href="static/bootstrap4.0/css/bootstrap.min.css" rel="stylesheet"/>

    <link href="static/css/bloghome.css" rel="stylesheet" rel="stylesheet"/>
    <link href="static/css/blogdetils.css" rel="stylesheet" rel="stylesheet"/>
    <script src="static/bootstrap4.0/js/jquery-3.2.1.js"></script>
    <!--引入markdown开始-->
    <link rel="stylesheet" href="static/editormd/editormd.css"/>
    <script src="static/editormd/tools/jquery.min.js"></script>
    <script src="static/editormd/editormd.js"></script>
    <!--引入markdown结束-->
    <script src="static/js/write/ques-details.js"></script>

</head>

<body>
<jsp:include page="../head/question-head.jsp" flush="true"></jsp:include>
<input value="${question.quId}" id="quId" >
<div class="container" id="main-body">
    <div class="row">
        <div class="col-10 m-3" id="body-left">
            <div class="card ">
                <div class="card-header">
                    <h2>${question.quTitle}</h2>
                    <a class="text-secondary" href="/peopleHome?uId=${question.uId}">${question.user.uName}</a>
                    <span>•${question.quDate}</span>&nbsp;&nbsp;
                    <span class="icon-th-list text-secondary">&nbsp;&nbsp;</span>
                    <a href="quesFieldList?caId=${question.caId}" class="text-secondary">${question.category.cataName}</a>&nbsp;&nbsp;
                    <span>${question.quValues}元</span>
                </div>
                <div class="card-body">


                    <div id="blog-html" class="text-left p-3 mx-3">
                        ${question.quHtml}
                    </div>

                </div>
            </div>
                <%
                    //计数
                    int count = 0;
                %>
            <!--回答部分-->
                <c:forEach items="${responses}" var="response">
                <div class="card mt-2">
                    <div class="card-header text-left mt-2">
                        <%
                           count ++;
                        %>
                        <span><%=count%>#</span>
                        <span>评论：</span>
                        <a href="#">${response.user.uName}</a>
                        <c:if test="${question.uId == sessionScope.sess_user.uId && response.uId!=sessionScope.sess_user.uId}">
                            <a href="#" class="float-right">采纳</a>
                        </c:if>

                    </div>
                    <div class="card-body text-left">
                        ${response.reHtml}
                    </div>
                    <div class="card-footer mb-4 text-right">${response.reDate}</div>
                </div>
                </c:forEach>
            <div class="card mt-4 py-3">
                <button id="respon" class="btn btn-success  " style="margin: auto 40%;">回答</button>


                <div id="test-editormd" class="mx-2 ">
								<textarea class="mt-2" style="display:none;">

                                    #### Using FlowChart

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

                <button id="sub-respon" style="margin: 10px 40%;" class="btn btn-success mt-2">提交回复</button>
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