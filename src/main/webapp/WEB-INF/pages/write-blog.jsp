<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
%>
<html>
<head>
    <title>写博客</title>
    <script src="<%=contextPath%>/static/js/jquery-3.2.1.js"></script>
    <script src="<%=contextPath%>/static/editormd/editormd.js"></script>
    <script src="<%=contextPath%>/static/bootstrap/js/bootstrap.js"></script>
    <link href="<%=contextPath%>/static/bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="<%=contextPath%>/static/bootstrap/css/bootstrap-theme.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=contextPath%>/static/editormd/css/editormd.css"/>
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon"/>
</head>
<body>
    <br>
    <div id="layout">
        <header></header>
        <input type="submit" value="提交" onclick="tijiao()"/>
        <div id="test-editormd">
            <textarea style="display:none;" class="editormd-html-textarea" id="editormd"></textarea>
            <textarea class="editormd-html-textarea" name="text" id="editormdhtml"></textarea>
        </div>

</div>


</div>

<script type="text/javascript">
    var testEditor;
    $(function () {
        testEditor = editormd("test-editormd", {
            width: "100%",
            height: 640,
            syncScrolling: "single",
            //为防止dispatchservlet 拦截css等静态资源，将静态资源放在webapp目录下
            path: "/static/editormd/lib/",//设置editormd的路径
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "/uploadfile",
            saveHTMLToTextarea : true
        });

    });

    function tijiao(){
        var htmlco = $("#editormdhtml").val();
        //alert(htmlco);
        var searchUrl;
        $.ajax(
            {data:{'text':htmlco},
                dataType:'text',
                success: function(data){
                    alert(data);
                    searchUrl = encodeURI("/show?htmltext="
                        + data);
                    location.href = "/blog";
                  //  alert(searchUrl);
                    //window.location.href = searchUrl;

                },
                type:'post',
                url:'/TextSvl'
            }
        )

    }
</script>
    </form>
</div>

</body>
</html>
