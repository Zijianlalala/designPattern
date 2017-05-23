<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
</head>
<body>
	<div align="center">
		<jsp:include page="header.html"/>
		<h3>请先登录</h3>
		<form action="login.do" method="post">
			<table border="1">
				<tr>
					<td>用户名</td>
					<td><input type="text" name="userName"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="password" name="userPwd"></td>
				</tr>
				<tr align="right">
					<td colspan="2">
						<input type="submit" value="登录">
						<input type="reset" value="取消">
					</td>
				</tr>
			</table>
		</form>
		<h3>如果未注册，请先<a href="register.jsp">注册</a></h3>
		<jsp:include page="footer.html"/>
	</div>
</body>
</html>