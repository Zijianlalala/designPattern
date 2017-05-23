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
	<div align="center">
		<jsp:include page="header.html"/>
		<jsp:include page="nav.html"/>
		<div id="leftcolumn">
			<jsp:include page="leftNav.html"/>
		</div>
		<div id="rightcolumn" align="left">
			<h2>策略模式</h2>
			<hr>
			<h3>定义</h3>
			<p>它定义了算法家族，分别封装起来，让它们之间可以相互替换，此模式让算法的变化，不会影响到使用算法的客户</p>
			<h3>本质</h3>
			<p>XXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
			<h3>优点</h3>
			<p>1）避免让客户端涉及到不必要的复杂逻辑以及与算法有关的数据<br>
			2）避免使用难以维护的多重条件语句
			</p>
			<h3>缺点</h3>
			<p>XXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
			<h3>应用场景</h3>
			<p>XXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
			<h3>UML图</h3>
			<p>XXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
		</div>
		<jsp:include page="footer.html"/>
	</div>
</body>
</html>