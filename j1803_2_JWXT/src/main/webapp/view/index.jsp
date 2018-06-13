<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>教务管理系统</title>
 <link rel="stylesheet" href="<%=basePath %>css/bootstrap.min.css"/>
 <link rel="stylesheet" href="<%=basePath %>css/style.css" />
 <script src="<%=basePath %>js/jquery-1.11.1.min.js"></script>
 <script src="<%=basePath %>js/bootstrap.min.js"></script>
 <script src="<%=basePath %>js/MyJs.js"></script>
</head>
<body onload="qw()">
    <!--页眉-->
    <nav class="navbar navbar-default">
        <div class="container">
            <ul class="nav navbar-nav navbar-left" style="float:left;width: 450px">
                <li class="col-xs-4 navHome" style="width: 100px">
                    <a href="<%=basePath %>view/index.jsp"><span class="glyphicon glyphicon-home" style="width: 100px">首页</span></a>
                </li>
                <li class="col-xs-4  navBackStage" style="width: 150px">
                    <a href="<%=basePath %>view/login2.jsp" style="text-decoration: none;" class="glyphicon glyphicon-tree-deciduous">登录</a>
                </li>
                <li class="col-xs-4  navBackStage" style="width: 150px">
                    <a href="<%=basePath %>view/login.jsp" style="text-decoration: none;" class="glyphicon glyphicon-share-alt">进入后台</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-default navbar-right" style="float:right">
                <li class="hidden-xs navTime">
                    <span>当前时间：</span><div id="getTime"></div>
                </li>
              	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
            	</button>
            </ul>            
        </div>
    </nav>

    <!--界面主体-->
    <div class="wrap">
        <!--标志-->
        <nav class="navbar clearfix">
            <div class="container">
                <div class="nav navbar-nav">
                        <img src="<%=basePath %>images/front_IMG/logo.png" alt="华清远见" class="img-responsive">               		
                </div>
                <div class="nav navbar-right">
                    <form class="row">
                        <div class="hidden-xs hidden-sm btn_search">
                            <input type="text" placeholder="搜索" style="border: 0px;">
                            <span class="searchVerticalLine"></span>
                            <a><span class="glyphicon glyphicon-search"></span></a>
                        </div>
                    </form>                   
                </div>				
            </div>
            <hr>
        </nav>

        <!--导航栏-->
        <div class="collapse navbar-collapse" id="navbar-collapse">
        	<div class="container-fluid">        
	            <ul class="nav navbar-nav" style="width:100%">
	                <li class="col-sm-2 col-md-2 col-lg-2"><a href="#" style="text-align:center;">学院概况</a></li>
	                <li class="col-sm-2 col-md-2 col-lg-2"><a href="#" style="text-align:center;">课程类别</a></li>
	                <li class="col-sm-2 col-md-2 col-lg-2"><a href="#" style="text-align:center;">教学实力</a></li>
	                <li class="col-sm-2 col-md-2 col-lg-2"><a href="#" style="text-align:center;">高薪就业</a></li>
	                <li class="col-sm-2 col-md-2 col-lg-2"><a href="#" style="text-align:center;">学习资源</a></li>
	                <li class="col-sm-2 col-md-2 col-lg-2"><a href="#" style="text-align:center;">关于我们</a></li>
	            </ul>
            </div>
        </div>

        <!--轮播-->
        <div id="MyCarousel" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#MyCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#MyCarousel" data-slide-to="1"></li>
                <li data-target="#MyCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active"><img src="<%=basePath %>images/front_IMG/banner01.jpg" alt="第一张"></div>
                <div class="item"><img src="<%=basePath %>images/front_IMG/banner02.jpg" alt="第二张"></div>
                <div class="item"><img src="<%=basePath %>images/front_IMG/banner03.jpg" alt="第三张"></div>
            </div>

            <a href="#MyCarousel" class="carousel-control left" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a href="#MyCarousel" class="carousel-control right" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>

        <!--在线课程-->
        <div class="online-class">
            <div class="container-fluid row">
                <div class="high ascension_wid online_more">
                    <span class="high_fen online_zi"></span>
                    <span class="high_title">在线课程</span>
                    <span class="high_xu">随时随地学高薪热门技术</span>
                    <a href="http://www.makeru.com.cn/?sogou" target="_blank" class="ascension_link">查看更多 &gt;</a>
                </div>
                <div class="hidden-xs hidden-sm hidden-md col-md-3 online-class-left">
                    <img src="<%=basePath %>images/front_IMG/online02.png">
                    <span>利用零散时间<br>全面搞定你的学习需求</span>
                    <div class="class-hover">
                        <a href="http://www.makeru.com.cn/?sogou"><em><img src="<%=basePath %>images/front_IMG/online03.png"  class="img-responsive"></em></a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-9 online-class-right">
                    <div class="col-sm-4 right-center">
                        <div class="right-first">
                            <img src="<%=basePath %>images/front_IMG/online05.png" class="img-responsive">
                            <span class="right-title">8大职业课程</span>
                            <span class="right-brief">从入门到精通 搞定高薪技能</span>
                        </div>
                        <div class="right-first">
                            <img src="<%=basePath %>images/front_IMG/online09.png" class="img-responsive">
                            <span class="right-title">每日作业提交</span>
                            <span class="right-brief">辅导老师一对一批改</span>
                        </div>
                    </div>
                    <div class="col-sm-4 right-center">
                        <div class="right-first">
                            <img src="<%=basePath %>images/front_IMG/online06.png" class="img-responsive">
                            <span class="right-title">4000+精品课程</span>
                            <span class="right-brief">巩固提升 想学就学</span>
                        </div>
                        <div class="right-first">
                            <img src="<%=basePath %>images/front_IMG/online10.png" class="img-responsive">
                            <span class="right-title">12小时在线答疑</span>
                            <span class="right-brief">文字、电话、直播等多种形式</span>
                        </div>
                    </div>
                    <div class="col-sm-4 right-center">
                        <div class="right-first">
                            <img src="<%=basePath %>images/front_IMG/online07.png" class="img-responsive">
                            <span class="right-title">科学的学习计划</span>
                            <span class="right-brief">快速客服懒惰 建立学习习惯</span>
                        </div>
                        <div class="right-first">
                            <img src="<%=basePath %>images/front_IMG/online11.png" class="img-responsive">
                            <span class="right-title">全国12大城市推荐就业</span>
                            <span class="right-brief">入学签订就业协议</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--校区展示-->
        <div class="places">
            <div class="container-fluid">
                <div class="places-title">
                    <p>12大校区&nbsp;&nbsp;遍布您身边</p>
                </div>
                <div>
                <ul class="places-location">
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center01.jpg" class="img-responsive">
                        <p class="center-img">北京校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center02.jpg" class="img-responsive">
                        <p class="center-img">上海校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center03.jpg" class="img-responsive">
                        <p class="center-img">深圳校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center04.jpg" class="img-responsive">
                        <p class="center-img">成都校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center05.jpg" class="img-responsive">
                        <p class="center-img">南京校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center06.jpg" class="img-responsive">
                        <p class="center-img">武汉校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center07.jpg" class="img-responsive">
                        <p class="center-img">西安校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center08.jpg" class="img-responsive">
                        <p class="center-img">广州校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center09.jpg" class="img-responsive">
                        <p class="center-img">沈阳校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center10.jpg" class="img-responsive">
                        <p class="center-img">济南校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center11.jpg" class="img-responsive">
                        <p class="center-img">重庆校区</p>
                    </li>
                    <li class="col-xs-12 col-sm-6 col-md-4">
                        <img src="<%=basePath %>images/front_IMG/center12.jpg" class="img-responsive">
                        <p class="center-img">长沙校区</p>
                    </li>                    
                </ul>
                </div>
            </div>
        </div>

        <!--荣誉展示-->
        <div class="honour">
            <div class="container-fluid">
               <div class="col-xs-12 col-sm-12 col-md-12">
                   <span></span>
                   	荣誉
               </div>
                <div>
                <ul class="price">
                    <li class="col-xs-6 col-sm-4 col-md-2">
                        <img src="<%=basePath %>images/front_IMG/enter01.jpg" class="img-responsive">
                        <p>Microsoft（微软）<br>合作伙伴卓越奖</p>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2">
                        <img src="<%=basePath %>images/front_IMG/enter02.jpg" class="img-responsive">
                        <p>2008年度中国本土<br>嵌入式系统十佳企业</p>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2">
                        <img src="<%=basePath %>images/front_IMG/enter03.jpg" class="img-responsive">
                        <p>Atmel公司全球战略<br>合作伙伴</p>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2">
                        <img src="<%=basePath %>images/front_IMG/enter04.jpg" class="img-responsive">
                        <p>英国ARM公司<br>授权培训中心</p>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2">
                        <img src="<%=basePath %>images/front_IMG/enter05.jpg" class="img-responsive">
                        <p>红帽Linux开发培训<br>合作伙伴</p>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2">
                        <img src="<%=basePath %>images/front_IMG/enter09.jpg" class="img-responsive">
                        <p>嵌入式人才特别奖</p>
                    </li>
                </ul>
                </div>
            </div>
        </div>
    </div>

    <!--页脚-->
    <div class="footer">
        <div class="container">
            <ul class="row ad">
                <li class="col-xs-12 col-sm-4 col-md-4">
                    <div class="logo">
                        <img src="<%=basePath %>images/front_IMG/logo2.png" width="156" height="42">
                        <span>高端IT就业培训专家</span>
                    </div>
                </li>
                <li class="hidden-xs col-sm-4 col-md-4 col-xs-pull-2 col-sm-pull-2 col-md-pull-2">
                    <div class="ad-info">
                        <div class="sub-brands">
                            <span>旗下子品牌</span>
                            <a href="http://www.embedu.com/?sogou" target="_blank">嵌入式学院</a>
                            <a href="http://www.embedu.com/courses/3g-edu-baidu.html?sogou" target="_blank">移动互联网学院</a>
                            <a href="http://iot.hqyj.com/?sogou" target="_blank">物联网学院</a>
                            <a href="http://www.makeru.com.cn/?sogou" target="_blank">创客学院</a>
                            <a href="http://dev.hqyj.com/?sogou" target="_blank">研发中心</a>
                        </div>
                        <div class="sub-brands campus">
                            <span>全国分校区</span>
                            <a href="http://bj.hqyj.com/?sogou" target="_blank">北京
                                <p class="online_yin" style="display: none;">北京市海淀区西三旗悦秀路北京明园大学  010-82600385/6</p>
                            </a>
                            <a href="http://sh.hqyj.com/?sogou" target="_blank">上海
                                <p class="online_yin" style="display: none;">上海市徐汇区漕溪路250号银海大楼11层  021-54485127</p>
                            </a>
                            <a href="http://sz.hqyj.com/?sogou" target="_blank">深圳
                                <p class="online_yin" style="display: none;">深圳市龙华新区美丽AAA大厦北座15层  0755-25590506</p>
                            </a>
                            <a href="http://cd.hqyj.com/?sogou" target="_blank">成都
                                <p class="online_yin" style="display: none;">成都市科华北路99号科华大厦2层  028-85405115</p>
                            </a>
                            <a href="http://nj.hqyj.com/?sogou" target="_blank">南京
                                <p class="online_yin" style="display: none;">南京市秦淮区汉中路185号鸿运大厦11层  025-86551900</p>
                            </a>
                            <a href="http://wh.hqyj.com/?sogou" target="_blank">武汉
                                <p class="online_yin" style="display: none;">武汉工程大学鲁巷校区科技孵化器11楼  027-87805288</p>
                            </a>
                            <a href="http://xa.hqyj.com/?sogou" target="_blank">西安
                                <p class="online_yin" style="display: none;">西安市高新区高新一路12号天公大厦3层  029-88756251</p>
                            </a>
                            <a href="http://gz.hqyj.com/?sogou" target="_blank">广州
                                <p class="online_yin" style="display: none;">广州市天河软件园柯木塱园5栋三层  020-38342087</p>
                            </a>
                            <a href="http://sy.hqyj.com/?sogou" target="_blank">沈阳
                                <p class="online_yin" style="display: none;">沈阳市沈河区北顺城路137号锦峰大厦7层  024-24349000</p>
                            </a>
                            <a href="http://jn.hqyj.com/?sogou" target="_blank">济南
                                <p class="online_yin" style="display: none;">济南市高新区三庆世纪财富中心B3座4层  0531-88898293</p>
                            </a>
                            <a href="http://cq.hqyj.com/?sogou" target="_blank">重庆
                                <p class="online_yin" style="display: none;">重庆市九龙坡区渝州路87号双薪时代9楼  023-68064704</p>
                            </a>
                            <a href="http://cs.hqyj.com/?sogou" target="_blank">长沙
                                <p class="online_yin" style="display: none;">长沙市开福区芙蓉中路海东青大厦B座11楼  15010390966</p>
                            </a>
                        </div>
                        <div class="sub-brands">
                            <span>关于我们</span>
                            <a href="http://www.hqyj.com/aboutus/?sogou" target="_blank">集团介绍</a>
                            <a href="http://www.hqyj.com/aboutus/contactus/?sogou" target="_blank">联系我们</a>
                            <a href="http://www.hqyj.com/aboutus/join/?sogou" target="_blank">加入我们</a>
                        </div>
                    </div>
                </li>
                <li class="hidden-xs col-sm-4 col-md-4" id="part3">
                    <div class="sub-brands attention">
                        <span>关注我们</span>
                        <img src="<%=basePath %>images/front_IMG/online_bo.jpg" alt="" width="109" height="109">
                        <img src="<%=basePath %>images/front_IMG/online_wei.jpg" alt="" width="109" height="109" class="wei">
                        <b>关注华清远见 </b>
                        <b class="are">关注创客学院</b>
                    </div>
                </li>
            </ul>
        </div>
        <div></div>
    </div>
</body>
</html>