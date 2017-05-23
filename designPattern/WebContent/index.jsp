<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设计模式</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:useBean id="user" class="com.beans.User" scope="application"></jsp:useBean>
<jsp:setProperty property="userName" name="user"/>	
	<div align="center">
		<jsp:include page="header.html"/>
		<jsp:include page="nav.html"/>
		<div id="leftcolumn">
			<jsp:include page="leftNav.html"/>
		</div>
		<div id="rightcolumn">
			<h2><jsp:getProperty property="userName" name="user"/>,欢迎您</h2>
		</div>
		<jsp:include page="footer.html"/>
	</div>
</body>
</html>