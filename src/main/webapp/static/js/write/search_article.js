function sub() {

}
$(function () {
    $("#search").click(function () {
        console.log("search article");
        if ($('#content').val().trim()==''){
            alert('请输入搜索信息！');
            return false;
        }
        $.ajax(
            {
                data: {'label': $('#content').val()},
                dataType: "text",
                success: function (data) {
                    console.log(data);
                    // alert(data);
                    location.href = "";
                },
                type: 'post',
                url: '/searchArt',
                error: function (data) {
                    console.log('error');
                }
            })
    });
    // $(function () { $('#collapseTwo').collapse('show')});
});