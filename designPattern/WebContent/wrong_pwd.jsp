<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>密码错误</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.html"/>
		<h2>密码错误，请重新输入密码</h2>
		<h2>3秒后,跳转到<a href="login.jsp">登录页面</a></h2>
		<jsp:include page="footer.html"/>
	</div>
	<%
		response.setHeader("refresh", "3;url=login.jsp");
	%>
</body>
</html>