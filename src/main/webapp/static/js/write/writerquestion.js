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

function sub_form() {
    var htmlco = $("#editormdhtml").val();
    // alert(htmlco);
    var searchUrl;
	if ($('#art-title').val().trim()==''){
		alert('请输入标题！');
		return false;
	}
    if ($('#summary').val().trim()==''){
        alert('请输入文章概括！');
        return false ;
    }

        $.ajax({
            data: {
                'html':testEditor.getHTML(),
                'md': testEditor.getMarkdown(),
                'title':$('#art-title').val(),
                'summary':$('#summary').val(),
                'cata':$('#cata').val()
            },
            dataType: 'text',
            success: function(data) {
                alert(data);
                searchUrl = encodeURI("/show?htmltext=" +
                    data);
                location.href = "/blog";
                //  alert(searchUrl);
                //window.location.href = searchUrl;
            },
            type: 'post',
            url: '/TextSvl'
        })


}
