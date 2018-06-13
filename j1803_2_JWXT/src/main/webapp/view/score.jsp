<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>教务管理系统</title>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/style.css" />
<script src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/MyJs.js"></script>

<link rel="stylesheet" href="<%=basePath%>css/safe/css.css" />
<link rel="stylesheet" href="<%=basePath%>css/safe/ms-style.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>css/safe/personal_member.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/sui.css" />
<link rel="stylesheet" href="<%=basePath%>css/person.css" />
<script type="text/javascript" src="<%=basePath%>js/sui.js"></script>
</head>
<style type="text/css">
</style>
<body onload="qw()">
	<!--页眉-->
	<nav class="navbar navbar-default">
		<div style="float: left">
			<img src="<%=basePath%>images/front_IMG/logo.png" alt="华清远见"
				class="img-responsive">
		</div>
		<div class="container">
			<ul class="nav navbar-nav navbar-left" style="float: left">
				<li class="col-xs-12 navHome"><a
					href="<%=basePath%>view/index.jsp"><span
						class="glyphicon glyphicon-home"> 首页</span></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-default navbar-right"
				style="float: right">
				<li><a href="<%=basePath%>view/login2.jsp">学生登录</a></li>
				<li><a href="<%=basePath%>indexController/logout.do">注销</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-default navbar-right"
				style="float: right">
				<li class="hidden-xs navTime"><span>当前时间：</span>
					<div id="getTime"></div></li>
					<li>
					<c:if test="${user eq null }">
					<a>未登录</a>
					</c:if>
					<c:if test="${user != null }">
					<a>欢迎[${user.loginName}]登录</a>
					</c:if>
				</li>
			</ul>

		</div>
	</nav>

	<!--界面主体-->
	<div class="container"
		style="background-color: #F8F8F8; padding: 10px;">
		<div id="ms-center" class="personal-member">
			<div class="cont">
				<div class="cont-side">
					<div class="side-neck" style="margin-top: 20px;">
						<i></i>
					</div>
					<div class="ms-side" style="margin-top: 20px;">
						<article class="side-menu side-menu-off">
							<dl class="side-menu-tree" style="padding-left: 50px;">
								<dd>
									<a href="<%=basePath%>indexController/person.do">我的信息</a>

								</dd>
								<dd>
									<a href="<%=basePath%>indexController/pwdUpdateUI.do">修改密码</a>
								</dd>
								<dd>
									<a href="<%=basePath%>chooseController/chooseUI2.do">我的课表</a>
								</dd>
								<dd>
									<a href="<%=basePath%>scoreController/studentselectScore1.do">我的分数</a>
								</dd>
							</dl>
						</article>
					</div>
				</div>
				<div class="main-wrap mt15" style="width: 85%; height: 500px">
					<strong><span class="icon-pencil-square-o"></span>我的分数</strong>
					<table class="table table-hover text-center">
						<tr >
							<!--  <th width="300">分数表ID</th> -->
							<th style="text-align: center;">学生姓名</th>
							<th style="text-align: center;">学生院系</th>
							<th style="text-align: center;">学生班级</th>
							<th style="text-align: center;">授课老师</th>
							<th style="text-align: center;">科目</th>
							<th style="text-align: center;">分数</th>
						</tr>

						<c:forEach items="${score}" var="score">
							<tr>
								<td>${score.sName}</td>
								<td>${score.majorName}</td>
								<td>${score.className}</td>
								<td>${score.tName}</td>
								<td>${score.subjectName }</td>
								<td>${score.score}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--页脚-->
	<div class="footer" style="margin-top: 0px">
		<div class="container">
			<ul class="row ad">
				<li class="col-xs-12 col-sm-4 col-md-4">
					<div class="logo">
						<img src="<%=basePath%>images/front_IMG/logo2.png" width="156"
							height="42"> <span>高端IT就业培训专家</span>
					</div>
				</li>
				<li
					class="hidden-xs col-sm-4 col-md-4 col-xs-pull-2 col-sm-pull-2 col-md-pull-2">
					<div class="ad-info">
						<div class="sub-brands">
							<span>旗下子品牌</span> <a href="http://www.embedu.com/?sogou"
								target="_blank">嵌入式学院</a> <a
								href="http://www.embedu.com/courses/3g-edu-baidu.html?sogou"
								target="_blank">移动互联网学院</a> <a href="http://iot.hqyj.com/?sogou"
								target="_blank">物联网学院</a> <a
								href="http://www.makeru.com.cn/?sogou" target="_blank">创客学院</a>
							<a href="http://dev.hqyj.com/?sogou" target="_blank">研发中心</a>
						</div>
						<div class="sub-brands campus">
							<span>全国分校区</span> <a href="http://bj.hqyj.com/?sogou"
								target="_blank">北京
								<p class="online_yin" style="display: none;">北京市海淀区西三旗悦秀路北京明园大学
									010-82600385/6</p>
							</a> <a href="http://sh.hqyj.com/?sogou" target="_blank">上海
								<p class="online_yin" style="display: none;">上海市徐汇区漕溪路250号银海大楼11层
									021-54485127</p>
							</a> <a href="http://sz.hqyj.com/?sogou" target="_blank">深圳
								<p class="online_yin" style="display: none;">深圳市龙华新区美丽AAA大厦北座15层
									0755-25590506</p>
							</a> <a href="http://cd.hqyj.com/?sogou" target="_blank">成都
								<p class="online_yin" style="display: none;">成都市科华北路99号科华大厦2层
									028-85405115</p>
							</a> <a href="http://nj.hqyj.com/?sogou" target="_blank">南京
								<p class="online_yin" style="display: none;">南京市秦淮区汉中路185号鸿运大厦11层
									025-86551900</p>
							</a> <a href="http://wh.hqyj.com/?sogou" target="_blank">武汉
								<p class="online_yin" style="display: none;">武汉工程大学鲁巷校区科技孵化器11楼
									027-87805288</p>
							</a> <a href="http://xa.hqyj.com/?sogou" target="_blank">西安
								<p class="online_yin" style="display: none;">西安市高新区高新一路12号天公大厦3层
									029-88756251</p>
							</a> <a href="http://gz.hqyj.com/?sogou" target="_blank">广州
								<p class="online_yin" style="display: none;">广州市天河软件园柯木塱园5栋三层
									020-38342087</p>
							</a> <a href="http://sy.hqyj.com/?sogou" target="_blank">沈阳
								<p class="online_yin" style="display: none;">沈阳市沈河区北顺城路137号锦峰大厦7层
									024-24349000</p>
							</a> <a href="http://jn.hqyj.com/?sogou" target="_blank">济南
								<p class="online_yin" style="display: none;">济南市高新区三庆世纪财富中心B3座4层
									0531-88898293</p>
							</a> <a href="http://cq.hqyj.com/?sogou" target="_blank">重庆
								<p class="online_yin" style="display: none;">重庆市九龙坡区渝州路87号双薪时代9楼
									023-68064704</p>
							</a> <a href="http://cs.hqyj.com/?sogou" target="_blank">长沙
								<p class="online_yin" style="display: none;">长沙市开福区芙蓉中路海东青大厦B座11楼
									15010390966</p>
							</a>
						</div>
						<div class="sub-brands">
							<span>关于我们</span> <a href="http://www.hqyj.com/aboutus/?sogou"
								target="_blank">集团介绍</a> <a
								href="http://www.hqyj.com/aboutus/contactus/?sogou"
								target="_blank">联系我们</a> <a
								href="http://www.hqyj.com/aboutus/join/?sogou" target="_blank">加入我们</a>
						</div>
					</div>
				</li>
				<li class="hidden-xs col-sm-4 col-md-4" id="part3">
					<div class="sub-brands attention">
						<span>关注我们</span> <img
							src="<%=basePath%>images/front_IMG/online_bo.jpg" alt=""
							width="109" height="109"> <img
							src="<%=basePath%>images/front_IMG/online_wei.jpg" alt=""
							width="109" height="109" class="wei"> <b>关注华清远见 </b> <b
							class="are">关注创客学院</b>
					</div>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>