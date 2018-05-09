var testEditor;

$(function() {

	testEditor = editormd("test-editormd", {
		width: "90%",
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
	testEditor.hide();
	$('#sub-respon').hide();
	$('#quId').hide();
	$("#respon").click(function() {
		$('#respon').hide();
		testEditor.show();
		$('#sub-respon').show();
	});

	$("#sub-respon").click(function() {
		
		if (testEditor.getHTML().trim()==''){
        alert('请输入内容！');
        return false;
    }

		$.ajax({
			data: {
			    'quId':$('#quId').val(),
				'reHtml': testEditor.getHTML(),
				'reMd':testEditor.getMarkdown()
			},
			dataType: 'text',
			success: function(data) {
				alert(data);
				location.href = "/ques-details?queId="+$('#quId').val();
				//  alert(searchUrl);
				//window.location.href = searchUrl;

			},
			type: 'post',
			url: '/add-respon'
		})

	});

});

