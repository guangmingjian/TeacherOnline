$(function () {
    $("#inputEmail").change(function () {
        console.log("验证是否用户名存在");
        var htmlco = $("#inputEmail").val();
        //alert(htmlco);
        // console.log(htmlco);
        $.ajax(
            {
                data: {'email': htmlco},
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    //window.location.href = searchUrl;
                    if (parseInt(data.email) == 0) {
                        // alert("提交成功" + data.email);
                        //禁用button
                        $("#sub").addClass("disabled");
                        //清空元素内容
                        $("#input-tip").empty();
                        $("#input-tip").html("请输入正确的用户名");
                    } else {
                        $("#sub").removeClass("disabled");
                        $("#input-tip").empty();
                    }

                },
                type: 'post',
                url: '/user/UserExist',
                error: function (data) {
                    console.log(data.email);
                }
            })
    });
    // $(function () { $('#collapseTwo').collapse('show')});
});