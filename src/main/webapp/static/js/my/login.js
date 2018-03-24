// $(function () {
//     var htmlco = $("#editormdhtml").val();
//     //alert(htmlco);
//     var searchUrl;
//     $.ajax(
//         {data:{'text':htmlco},
//             dataType:'text',
//             success: function(data){
//                 alert(data);
//                 searchUrl = encodeURI("/show?htmltext="
//                     + data);
//                 location.href = "/blog";
//                 //  alert(searchUrl);
//                 //window.location.href = searchUrl;
//
//             },
//             type:'post',
//             url:'/TextSvl'
//         }
//     )
//
// });