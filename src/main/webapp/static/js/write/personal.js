function updateUser() {
    if ($('#password').val().trim()==''){
        alert('请输入密码！');
        return false;
    }
    if ($('#uName').val().trim()==''){
        alert('请输入姓名！');
        return false ;
    }
    if ($('#age').val().trim()==''){
        alert('请输入年龄！');
        return false ;
    }
    if ($('#tel').val().trim()==''){
        alert('请输入电话！');
        return false ;
    }

    $.ajax({
        data: {
            'uEmail':$('#email').val(),
            'uPassword':$('#password').val(),
            'uName': $('#uName').val(),
            'uTel':$('#tel').val(),
            'uAge':$('#age').val(),
            'field':$('#field').val()
        },
        dataType: 'text',
        success: function(data) {
            alert(data);
            location.href = "/personal";
            //  alert(searchUrl);
            //window.location.href = searchUrl;
        },
        type: 'post',
        url: '/updateUser'
    })


}