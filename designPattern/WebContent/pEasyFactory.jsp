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
			<h2>简单工厂模式</h2>
			<hr>
			<h3>定义</h3>
			<p>又称静态工厂方法，属于创建型模式。在简单工厂模式中，可以根据参数的不同，返回不同的类的实例。简单工厂模式专门定义一个类来负责创建其他类的实例，被创建的实例通常都具有共同的实例</p>
			<h3>本质</h3>
			<p>XXXXXXXXXXXXXXXXXXXXXXXXXXX</p>
			<h3>优点</h3>
			<ul>
				<li>把对外创建对象的职责集中管理控制，提供了专门的工厂类来创建对象，免除了客户端直接创建产品的责任</li>
				<li>客户端无需知道具体产品类的类名，只需要具体产品类对应的参数即可</li>
			</ul>
			<h3>缺点</h3>
			<ul>
				<li>系统扩展困难，违背开放封闭原则</li>
				<li>由于工厂类集中了所有创建对象的逻辑，一旦不能正常工作，整个系统都要受到影响</li>
			</ul>
			<h3>应用场景</h3>
			<ul>
				<li>工厂类负责创建的对象比较少：由于创建的对象较少，不会造成工厂方法中的业务逻辑太过复杂</li>
				<li>客户端既不需要关心创建细节，甚至连类名也不需要记住，之传入工厂类的参数即可</li>
			</ul>
			<h3>UML图</h3>
			<p><img src="_images/SimpleFactory.jpg"></p>
			简单工厂包括如下角色：
			<ul>
				<li><b>Factory:工厂角色</b><br>工厂角色负责实现创建所有实例的内部逻辑</li>
				<li><b>Product:抽象产品角色</b><br>抽象产品角色是所创建所有对象的父类，负责描述所有实例所共有的公共接口</li>
				<li><b>ConcreteProduct:具体产品角色</b><br>具体产品角色是创建目标，所有创建的对象都充当这个角色的有个具体产品类的实例</li>
			</ul>
			<form action="process.do" method="get">
				<input type="submit" value="已学习">
			</form>
		</div>
		<jsp:include page="footer.html"/>
	</div>
</body>
</html>