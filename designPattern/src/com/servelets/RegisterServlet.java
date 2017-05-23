package com.servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdbc.*;
import com.beans.User;

public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newName = request.getParameter("userName");
		String newPwd = request.getParameter("userPwd");
		User user = new User();
		RequestDispatcher dis = null;
		try {
			if(user.isUser(newName)){
				//注册无效，用户名已存在，返回注册页面重新注册
				dis = request.getRequestDispatcher("register_failed.jsp");
			}else{
				//注册成功，并将数据存入数据库，返回登录页面
				user.createUser(newName, newPwd);
				dis = request.getRequestDispatcher("register_success.jsp");
			}
			dis.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
