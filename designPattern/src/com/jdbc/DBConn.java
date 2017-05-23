package com.jdbc;
import java.sql.*;
public class DBConn {
	private static String driverName = "com.mysql.jdbc.Driver";
	private static String userName = "root";
	private static String userPwd = "test";
	private static String dbName = "javaweb";
	public Connection getUserDBconn(){
		String url1 = "jdbc:mysql://localhost/" + dbName;
		String url2 = "?user=" + userName + "&password=" + userPwd;
		String url3 = "&useUnicode=true&characterEncoding=UTF-8";
		String url = url1 + url2 + url3;
		try{
			Class.forName(driverName);
			Connection conn = DriverManager.getConnection(url);
			return conn;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return null;
	}
	public void closeUserDB(Connection conn,PreparedStatement pstmt,ResultSet rs){
		try{
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
