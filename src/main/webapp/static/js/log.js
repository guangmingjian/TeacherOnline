$(function() {
	$("#inputEmail").change(function() {
		console.log("验证是否用户名存在");
        var htmlco = $("#inputEmail").val();
        //alert(htmlco);
        // console.log(htmlco);
        $.ajax(
            {data: {'email':htmlco},
                dataType:"json",
                success: function(data){
                console.log(data);
                    alert("提交成功");
                    //  alert(searchUrl);
                    //window.location.href = searchUrl;
                    $("#input-tip").html("请输入正确的用户名");
                },
                type:'post',
                url:'/UserExist'
            })
	});
	// $(function () { $('#collapseTwo').collapse('show')});
});