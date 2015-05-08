<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"  %>
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
	<link href="<%=basePath%>uploadify/uploadify.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>uploadify/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>uploadify/swfobject.js"></script>
	<script type="text/javascript" src="<%=basePath%>uploadify/jquery.uploadify.v2.1.0.min.js"></script>
	
	<script type="text/javascript">
	
	$(document).ready(function() {
		$("#file").uploadify({
			//以下参数均是可选
			'uploader'  : 'uploadify/uploadify.swf',   //指定上传控件的主体文件，默认‘uploader.swf’
			'script'    : 'test_upload.action',       //指定服务器端上传处理文件，默认‘upload.php’
			'cancelImg' : 'uploadify/cancel.png',   //指定取消上传的图片，默认‘cancel.png’
			'fileDataName':'myFile',   
			'auto'      : false,               //选定文件后是否自动上传，默认false
			'folder'    : '/file',         //要上传到的服务器路径，默认‘/’
			'multi'     : false,               //是否允许同时上传多文件，默认false
			'queueSizeLimit' : 1, //队列中同时存在的文件个数限制  
			'simUploadLimit' :1,         //多文件上传时，同时上传文件数目限制
			'buttonImg' : 'uploadify/browse.jpg',
			'width' : 70,
			'height' : 25,
			'wmode' : 'transparent',
			'onComplete' : function(event,queueID,fileObj,response,data){
				alert(response);
				window.location.reload();
			}
		});
	});
	
	function upload(){
	   $("#file").uploadifyUpload();
	}
	</script>
	
  </head>
  
  <body>
	  <div>
	  	<table width="80%" align="center">
	  		<tr height="100">
	  	     	<td width="50%"><input type="text" name="name" id="name" />
	  	     	<td width="50%"><input type="text" name="type" id="type" />
	  			<td width="50%"><input type="file" name="myFile" id="file" />
	  			<input type="button" value="上传" onclick="upload();"></td>
	  		</tr>
	  	</table>
	  </div>
  </body>
</html>





