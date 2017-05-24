package com.servelets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdbc.DBUtil;

import com.beans.User;

/**
 * Servlet implementation class LoginServelet
 */
public class LoginServelet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("userName");
		String pwd = request.getParameter("userPwd");
		User usr = new User();
		String info = "";
		RequestDispatcher dis = request.getRequestDispatcher("/login.jsp");
		try {
			if(usr.isUser(name)){
				//该用户已注册，再验证密码是否正确
				if(usr.isPwd(pwd)){
					//密码正确，允许登录
					dis = request.getRequestDispatcher("index.jsp");
				}else{
					//密码不正确，请重新输入密码
					//dis = request.getRequestDispatcher("wrong_pwd.jsp");
					info = "密码错误";
				}
			}else{
				//该用户未注册，请先注册
				//dis = request.getRequestDispatcher("login_failed.jsp");
				info = "用户未注册";
			}
			request.setAttribute("info", info);
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
