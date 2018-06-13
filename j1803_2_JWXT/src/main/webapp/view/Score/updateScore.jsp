
    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>录入分数</title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<script src="<%=basePath%>My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div class="panel admin-panel margin-top">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>修改分数</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x"
				action="<%=basePath%>scoreController/updateScoredo.do">
					<div class="form-group">
					<div class="label">
						<!-- <label>分数ID：</label> -->
					</div>
					<div class="field">
						<input type="hidden" class="input w50" name="scoreId" value="${newscore.scoreId}" readonly="true"/>
						
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>学生姓名：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="" value="${newscore.sName}"readonly="true" />
						
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>学生院系：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="" value="${newscore.majorName}"readonly="true" />
						
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>学生班级：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="" value="${newscore.className}"readonly="true" />
						
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>科目：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="" value="${newscore.subjectName}"readonly="true" />
						
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>授课教师：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="" value="${newscore.tName}" readonly="true"/>
						
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>分数：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="score" value="${newscore.score}" />
						
					</div>
				</div>
				
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<input type="submit" value="提交"> &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="重置">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>