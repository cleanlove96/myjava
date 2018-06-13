<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<style type="text/css">
	.first{
		 height:50px;
	}
	.first th{
		line-height: 50px;
	}
	
	.second{
		height:80px;
		text-align: center;
		vertical-align: middle;
	}
	.seconod td{		
		height: 80px;
	}
	
</style>
<script type="text/javascript">
	function back(){
		window.location.href="<%=basePath%>scheduleController/scheduleTableUI.do";
	}
</script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-pencil-square-o"></span>编辑排课表</strong>
		</div>
		<div class="body-content" align="center">
			<table border="1px solid gray" width="90%">
				<tr class="first">
					<th width="20%">科目</th>										
					<th width="20%">时间</th>										
					<th width="20%">教师</th>										
					<th width="20%">教室</th>																			
					<th width="20%" colspan="2">操作</th>																			
				</tr>
				
				<c:forEach items="${listAllSchedule }" var="scheduleResult">
					<input type="hidden" name="scheduleId" value="${scheduleResult.scheduleId }">
					<tr height="100px" class="second">									    
						<td>${scheduleResult.subjectName }</td>
						<td>${scheduleResult.timeName }</td>
						<td>${scheduleResult.tName }</td>
						<td>${scheduleResult.placeName }</td>
						<td>
							<div class="button-group">							
								<a class="button border-red" href="<%=basePath %>scheduleController/deleteSchedule.do?scheduleId=${scheduleResult.scheduleId }" onclick="return confirm('你确定要删除吗?')" style="padding:5px">
								<span class="icon-trash-o"></span> 删除</a> 
							</div>
						</td>	
					</tr>	
				</c:forEach>															
			</table>
			
			<div class="form-group">
				<div class="label">
					<label></label>
				</div>
				<div class="field">
					<button class="button bg-main icon-reply" onclick="return back()"> 返回</button>
				</div>
			</div>		
		</div>
	</div>
	
</body>
</html>