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
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>个人信息</strong></div>
  <div class="body-content">
  		<table class="table"  height="300px">
      		<tr >
      			<td colspan="2">
      				<label>角色：</label>${role.roleName}
      			</td>
      		</tr>
      		<tr>
      			<td>
      				<label>姓名：</label>${admin.adminName }
      			</td>
      			<td>
      				<label>性别：</label>${admin.sex }
      			</td>
      		</tr>
      		<tr>
      			<td>
      				<label>籍贯：</label>${admin.nativePlace }
      			</td>
      			<td>
      				<label>年龄：</label>${admin.age }
      			</td>
      		</tr>
      		<tr>
      			<td colspan="2">
      				<a href="<%=basePath %>personController/admUpdateUI.do?adminId=${admin.adminId}">
      					修改信息
      				</a>
      			</td>
      		</tr>
        </table>
  </div>
</div>
<script type="text/javascript">
	
</script>
</body>
</body>
</html>