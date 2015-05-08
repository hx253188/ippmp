<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>企学家文件共享</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="upload/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="upload/jquery-1.6.4.js"></script>
<script type="text/javascript" src="upload/jquery.uploadify.js"></script>
<script type="text/javascript">
	$(function() {
		$("#uploadFile").uploadify(
				{
					'buttonText' : '选择上传数据',
					'width' : 200,
					'swf' : 'upload/uploadify.swf',
					'uploader' : 'test_upload.action',
					'cancelImage' : 'upload/uploadify-cancel.png',
					'method' : 'post',
					'fileObjName' : 'myFile',
					'auto' : true,
					'queueID' : 'fileQueue',
					'debug' : false,
					'removeCompleted' : true,
					'requeueErrors' : true,
					'progressData' : "all",
					'onUploadProgress' : function(file, bytesUploaded,
							bytesTotal, totalBytesUploaded, totalBytesTotal,
							queueBytesLoaded) {
						$("#result")
								.append(
										"</pre><div>文件\"" + file.name + "\"共"
												+ totalBytesTotal + "字节，已上传"
												+ totalBytesUploaded
												+ "字节!</div><pre>");
						if (totalBytesUploaded == totalBytesTotal) {
							$("#result").append(
									"</pre><div>文件\"" + file.name
											+ "\"上传成功！</div><pre> ");
						}
					},
					'onUploadSuccess' : function(file, data, response) {
					
						var retdata = eval("(" + data + ")");
						//提示消息
						$("#result").append(
								"</pre><div>" + retdata.msg + "</div><pre>");
					}

				});
	});
</script>

</head>

<body>
	<input id="uploadFile" type="file" name="myFile" />
	<div id="fileQueue"></div>
	<div id="result"></div>
	<div id="progress"></div>
</body>
</html>





