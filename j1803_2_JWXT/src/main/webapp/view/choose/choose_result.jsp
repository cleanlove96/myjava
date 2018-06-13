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
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="<%=basePath%>css/pintuer.css">
<link rel="stylesheet" href="<%=basePath%>css/admin.css">
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/pintuer.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/kkpager/jpager.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>js/kkpager/jpager.css">
<script type="text/javascript"
	src="<%=basePath%>js/kkpager/listPage.js"></script>
<script type="text/javascript" src="<%=basePath%>view/choose/listPage2.js"></script>
<script type="text/javascript" src="<%=basePath%>view/choose/search2.js"></script>

<script type="text/javascript">
        function load() {
        	arrayPage(${pageResult.pages},${pageResult.total});
        }
        
 </script>
</head>
<body onload="load()">
	<form method="post" action="<%=basePath%>chooseController/search3.do?id=2" >
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 选课结果</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search">
					<li>
					<input type="text" placeholder="请输入课程" name="keywords"
						class="input"
						style="width: 250px; line-height: 17px; display: inline-block" />
						<button type="submit" class="button border-main icon-search" >
							查询</button>
					<font color="blue"  class="container" align="center"> ${succeed}</font>
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>

					<th width="120">课程</th>
					<th>上课时间</th>
					<th>教师</th>
					<th>地点</th>
				</tr>
				<c:forEach items="${pageResult.dataList}" var="course">
					<tr>
					    <td>${course.subjectName }</td>
						<td>${course.timeName }</td>
						<td>${course.tName }</td>
						<td>${course.placeName }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
					<div id="jpager" align="center"></div>
	</form>
</body>
</html>