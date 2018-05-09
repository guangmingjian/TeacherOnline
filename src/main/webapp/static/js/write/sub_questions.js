var testEditor;
$(function() {
    $(".btns button").addClass("btn btn-group btn-light");
    testEditor = editormd("test-editormd", {
        width: "100%",
        height: 500,
        path: "static/editormd/lib/",
        imageUpload: true,
        imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
        imageUploadURL: "/uploadfile",
        saveHTMLToTextarea: true,
        watch: false,
        htmlDecode: true,
        toolbar: false,
        previewCodeHighlight: false,
        tex: true,
        flowChart: true,
        sequenceDiagram: true,
        emoji: true,
        taskList: true,
        onload: function() {
            console.log('onload', this);

            this.config("lineNumbers", false);

            this.config({
                toc: false,
                tex: false,
                toolbar: true,
                previewCodeHighlight: true, // before set previewCodeHighlight == false, editor not load pretty.js, so now codes can't highlight and display line numbers.
                flowChart: false,
                sequenceDiagram: false,
                dialogLockScreen: false,
                dialogMaskOpacity: 0.5, // 设置透明遮罩层的透明度，全局通用，默认值为0.1
                dialogDraggable: false,
                dialogMaskBgColor: "#000"
            });

            this.config("onresize", function() {
                console.log("onresize =>", this);
            });

            this.watch();
        }
    });
    $("#show-btn").click(function() {
        testEditor.show();
    });
    $("#hide-btn").click(function() {
        testEditor.hide();
    });
    $("#get-md-btn").click(function() {
        alert(testEditor.getMarkdown());
    });
    $("#get-html-btn").click(function() {
        alert(testEditor.getHTML());
    });
    $("#watch-btn").click(function() {
        testEditor.watch();
    });
    $("#unwatch-btn").click(function() {
        testEditor.unwatch();
    });
    $("#preview-btn").click(function() {
        testEditor.previewing();
    });
    $("#fullscreen-btn").click(function() {
        testEditor.fullscreen();
    });
    $("#show-toolbar-btn").click(function() {
        testEditor.showToolbar();
    });
    $("#close-toolbar-btn").click(function() {
        testEditor.hideToolbar();
    });
});

function  sub_question() {
    if ($('#title').val().trim()==''){
        alert('请输入密码！');
        return false;
    }
    if ($('#type').val().trim()==''){
        alert('请输入密码！');
        return false;
    }
    if ($('#value').val().trim()==''){
        alert('请输入密码！');
        return false;
    }
    $.ajax({
        data: {
            'quHtml':testEditor.getHTML(),
            'quContent': testEditor.getMarkdown(),
            'quTitle':$('#title').val(),
            'quType':$('#type').val(),
            'quValues':$('#value').val()
        },
        dataType: 'text',
        success: function(data) {
            alert(data);
            location.href = "/ques-list";
            //  alert(searchUrl);
            //window.location.href = searchUrl;
        },
        type: 'post',
        url: '/ques-sub'
    })
    
}