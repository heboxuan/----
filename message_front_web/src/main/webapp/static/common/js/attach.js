var Attach={chackImageNum:function(){var e=$(".attched").length;console.log("要上传的文件个数="+e),5===e?($(".addFile").find(".fileupload").find("input").attr("type","hidden"),layer.alert("最多上传5个文件！",{icon:5})):e<5&&$(".addFile").find(".fileupload").find("input").attr("type","file")},uploadFile:function(){5!=$(".attched").length?($("#loading").show(),$.ajaxFileUpload({url:CONTEXT_PATH+"/attachment/upload",secureuri:!1,fileElementId:"fileupload",dataType:"json",success:function(e,a){if("success"==e.result){var t=e.responseData[0];$("#imgArea").append(tmpl("attach_img_tpl",t)),0<jQuery(".html5lightbox").length&&jQuery(".html5lightbox").html5lightbox()}else layer.alert(e.responseData,{icon:5});$("#loading").hide(),5==$("#imgArea span").length&&$("#uploadBT").css("display","none")},error:function(e,a,t){layer.alert("您上传的图片大小超过5M或者文件内容已损坏",{icon:5}),$("#loading").hide()}}),$("#fileupload").val("")):layer.alert("最多上传5个文件！",{icon:5})},delUpload:function(a){layer.confirm("确定要删除该附件吗？",function(e){5==$(".attched").length&&$("#uploadBT").css("display","block"),$(a).parent().remove(),layer.close(e),Attach.chackImageNum()})},uploadCompIdAttach:function(o){$("#"+o+"Loading").css("display","inline"),$("#"+o+"UploadBtn").hide(),$("#"+o).hide(),$.ajaxFileUpload({url:CONTEXT_PATH+"/attachment/uploadUserCompAttach",secureuri:!1,fileElementId:o,dataType:"json",success:function(e,a){if($("#"+o+"Loading").hide(),"success"==e.result){var t=e.responseData[0];$("#"+o+"_complete").show(),$("#"+o+"_preview").attr("href",CONTEXT_PATH+"/attachment/downloadUserCompAttach?fileName="+t.fileName+"&orgFileName="+t.orgFileName),$("#"+o+"Img").attr("src",CONTEXT_PATH+"/attachment/downloadUserCompAttach?fileName="+t.fileName+"&orgFileName="+t.orgFileName),$("#"+o+"_del").click(function(){"idcardAttachFront"==o?$("#"+o+"Img").attr("src",CONTEXT_PATH+"/static/www/images/2018_qy/icon08.gif"):$("#"+o+"Img").attr("src",CONTEXT_PATH+"/static/www/images/2018_qy/icon09.gif"),$("#"+o+"UploadBtn").show(),$("#"+o).show(),$("#"+o+"_complete").hide(),$("#"+o+"Input").val("")}),$("#"+o+"Input").val('[{"fileName": "'+t.fileName+'", "orgFileName": "'+t.orgFileName+'"}]')}else layer.alert(e.responseData,{icon:5}),$("#"+o+"UploadBtn").show(),$("#"+o).show();var l=$("#"+o+"Input").attr("data-tipid");null==l&&""==l||layer.close(l)},error:function(e,a,t){alert(t),$("#"+o+"Loading").hide(),$("#"+o+"UploadBtn").show(),$("#"+o).show()}}),$("#"+o).val("")},uploadCompAttach:function(o){$("#"+o+"Loading").css("display","inline"),$("#"+o+"UploadBtn").hide(),$.ajaxFileUpload({url:CONTEXT_PATH+"/attachment/uploadUserCompAttach",secureuri:!1,fileElementId:o,dataType:"json",success:function(e,a){if($("#"+o+"Loading").hide(),"success"==e.result){var t=e.responseData[0];$("#"+o+"_complete").show(),$("#"+o+"_preview").attr("href",CONTEXT_PATH+"/attachment/downloadUserCompAttach?fileName="+t.fileName+"&orgFileName="+t.orgFileName),$("#"+o+"_del").click(function(){$("#"+o+"UploadBtn").show(),$("#"+o).show(),$("#"+o+"_complete").hide(),$("#"+o+"Input").val("")}),$("#"+o+"Input").val('[{"fileName": "'+t.fileName+'", "orgFileName": "'+t.orgFileName+'"}]')}else layer.alert(e.responseData,{icon:5}),$("#"+o+"UploadBtn").show(),$("#"+o).show();var l=$("#"+o+"Input").attr("data-tipid");null==l&&""==l||layer.close(l)},error:function(e,a,t){alert(t),$("#"+o+"Loading").hide(),$("#"+o+"UploadBtn").show(),$("#"+o).show()}}),$("#"+o).val("")},delCompAttach:function(a){layer.confirm("确定要删除该附件吗？",function(e){$(a).parent().remove(),layer.close(e)})},reUploadCompIdAttach:function(o){$("#"+o+"Loading").css("display","inline"),$("#"+o+"UploadBtn").hide(),$("#"+o).hide();var i=$("#idcardAttachFrontImg").attr("src"),n=$("#idcardAttachBackImg").attr("src");$.ajaxFileUpload({url:CONTEXT_PATH+"/attachment/uploadUserCompAttach",secureuri:!1,fileElementId:o,dataType:"json",success:function(e,a){if($("#"+o+"Loading").hide(),"success"==e.result){var t=e.responseData[0];$("#"+o+"_complete").show(),$("#"+o+"_preview").attr("href",CONTEXT_PATH+"/attachment/downloadUserCompAttach?fileName="+t.fileName+"&orgFileName="+t.orgFileName),$("#"+o+"Img").attr("src",CONTEXT_PATH+"/attachment/downloadUserCompAttach?fileName="+t.fileName+"&orgFileName="+t.orgFileName),$("#"+o+"_del").click(function(){"idcardAttachFront"==o?$("#"+o+"Img").attr("src",i):$("#"+o+"Img").attr("src",n),$("#"+o+"UploadBtn").show(),$("#"+o).show(),$("#"+o+"_complete").hide(),$("#"+o+"Input").val("")}),$("#"+o+"Input").val('[{"fileName": "'+t.fileName+'", "orgFileName": "'+t.orgFileName+'"}]')}else layer.alert(e.responseData,{icon:5}),$("#"+o+"UploadBtn").show(),$("#"+o).show();var l=$("#"+o+"Input").attr("data-tipid");null==l&&""==l||layer.close(l)},error:function(e,a,t){alert(t),$("#"+o+"Loading").hide(),$("#"+o+"UploadBtn").show(),$("#"+o).show()}}),$("#"+o).val("")},reUploadCompAttach:function(o){$("#"+o+"Loading").css("display","inline"),$("#"+o+"UploadBtn").hide(),$.ajaxFileUpload({url:CONTEXT_PATH+"/attachment/uploadUserCompAttach",secureuri:!1,fileElementId:o,dataType:"json",success:function(e,a){if($("#"+o+"Loading").hide(),"success"==e.result){var t=e.responseData[0];$("#"+o+"_complete").show(),$("#"+o+"_preview").attr("href",CONTEXT_PATH+"/attachment/downloadUserCompAttach?fileName="+t.fileName+"&orgFileName="+t.orgFileName),$("#"+o+"_del").click(function(){$("#"+o+"UploadBtn").show(),$("#"+o).show(),$("#"+o+"_complete").hide(),$("#"+o+"Input").val("")}),$("#"+o+"Input").val('[{"fileName": "'+t.fileName+'", "orgFileName": "'+t.orgFileName+'"}]')}else layer.alert(e.responseData,{icon:5}),$("#"+o+"UploadBtn").show(),$("#"+o).show();var l=$("#"+o+"Input").attr("data-tipid");null==l&&""==l||layer.close(l)},error:function(e,a,t){alert(t),$("#"+o+"Loading").hide(),$("#"+o+"UploadBtn").show(),$("#"+o).show()}}),$("#"+o).val("")},uploadCaseFile:function(){5!=$(".caseAttched").length?($("#loading").show(),$.ajaxFileUpload({url:CONTEXT_PATH+"/attachment/caseAttachUpload",secureuri:!1,fileElementId:"caseFileupload",dataType:"json",success:function(e,a){if("success"==e.result){var t=e.responseData[0];$("#caseImgArea").append(tmpl("case_attach_tpl",t)),0<jQuery(".html5lightbox").length&&jQuery(".html5lightbox").html5lightbox()}else layer.alert(e.responseData,{icon:5});$("#loading").hide();var l=$(".caseAttched").length;console.log(l),5==l&&$("#caseUploadBT").css("display","none")},error:function(e,a,t){layer.alert("您上传的图片大小超过5M或者文件内容已损坏",{icon:5}),$("#loading").hide()}}),$("#caseFileupload").val("")):layer.alert("最多上传5个文件！",{icon:5})},delCaseUpload:function(a){layer.confirm("确定要删除该附件吗？",function(e){5==$(".caseAttched").length&&$("#caseUploadBT").css("display","block"),$(a).parent().remove(),layer.close(e),Attach.chackCaseImageNum()})},chackCaseImageNum:function(){var e=$(".caseAttched").length;console.log("要上传的文件个数="+e),5===e?($(".addFile").find(".caseFileupload").find("input").attr("type","hidden"),layer.alert("最多上传5个文件！",{icon:5})):e<5&&$(".addFile").find(".caseFileupload").find("input").attr("type","file")}};