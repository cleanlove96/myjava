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
<script type="text/javascript">
	$(function() {
		<c:forEach items="${roleMenuList}" var="roleMenu">
		$("#${roleMenu.menuId}").attr("checked", "checked");
		</c:forEach>
	})
</script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add">
	  <strong><span class="icon-pencil-square-o"></span>菜单分配</strong>
	  <font>${role.roleName}</font>
  </div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>roleController/roleFpMenu.do">
    	<input type="hidden" class="input" value="${role.roleId}" name="roleId"/>
      <div class="form-group">
        <div class="label">
          <label>选择菜单：</label>
        </div>
        <div class="field">
        <%!int i=0; %>	
        <c:forEach items="${menuList}" var="menu">
        	
        	<c:if test="${menu.menuId !='root'}">
        		<div  style="width:20%;display: inline-block;">
	        		<input type="checkbox" id="${menu.menuId}" name="menuIds" value="${menu.menuId }" />
	        		<font>${menu.menuName}</font>
        		</div>
        		<%  i++;if(i%3==0){%><br><%}%>
        	</c:if>
        	
        </c:forEach>
          
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" onclick="return isCheck()"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<script type="text/javascript">
	function isCheck(){
		var isC=false;
		$("input[name='menuIds']").each(function(){
			if(this.checked){
				isC=true;
			}
		})
		
		if(!isC){
			confirm("请选择了菜单再提交？");
		}
		return isC;
	}
</script>
</body>
</html>