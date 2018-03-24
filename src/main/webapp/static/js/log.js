$(function() {
	$("#inputEmail").change(function() {
		console.log("验证是否用户名存在");
        var htmlco = $("#inputEmail").val();
        //alert(htmlco);
        $.ajax(
            {data:{'email':htmlco},
                dataType:'email',
                success: function(data){
                console.log(data);
                    alert(data);
                    //  alert(searchUrl);
                    //window.location.href = searchUrl;
                },
                type:'post',
                url:'/UserExist',
                error:alert("错误")
            })
	});
	// $(function () { $('#collapseTwo').collapse('show')});
});