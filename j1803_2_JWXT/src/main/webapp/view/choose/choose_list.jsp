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
<script type="text/javascript" src="<%=basePath%>view/choose/listPage.js"></script>
<script type="text/javascript" src="<%=basePath%>view/choose/search.js"></script>

<script type="text/javascript">
        function load() {
        	arrayPage(${pageResult.pages},${pageResult.total});
        }
        
 </script>
</head>
<body onload="load()">
	<form method="post" action="<%=basePath%>chooseController/search.do?id=1" >
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 排课查看</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search">
					<li>
					<input type="text" placeholder="请输入课程" name="keywords"
						class="input"
						style="width: 250px; line-height: 17px; display: inline-block" />
						<button type="submit" class="button border-main icon-search" >
							查询</button>
							<font color="red"  class="container" align="center"> ${Err}</font>
						<h1 ></h1>
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>

					<th width="120">课程</th>
					<th>上课时间</th>
					<th>教师</th>
					<th>地点</th>
					<th>最大人数</th>
					<th>已选人数</th>
					<th colspan="3">操作</th>
				</tr>
				<c:forEach items="${pageResult.dataList}" var="course">
					<tr>
					    <td>${course.subjectName }</td>
						<td>${course.timeName }</td>
						<td>${course.tName }</td>
						<td>${course.placeName }</td>
						<td>${course.total }</td>
						<td>${course.count}</td>
						<td>
						<c:choose>
						<c:when test="${course.count== course.total}">
						<div class="button-group" >
								<a class="button border-black"
									href="javascript:return false"><span
									class="icon ion-link" ></span> 选课</a> 
						</div>
						</c:when>
						<c:otherwise>
						<div class="button-group" >
								<a class="button border-main"
									href="<%=basePath%>chooseController/add.do?scheduleId=${course.scheduleId}&timeId=${course.timeId }"><span
									class="icon ion-link" ></span> 选课</a> 
						</div>
						</c:otherwise>
						</c:choose>
						</td>	
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="jpager" align="center"></div>
	</form>
</body>
</html>