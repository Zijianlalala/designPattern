package com.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jdbc.DBConn;

public class User {
	private String userName;
	private String userPwd;
	private float process;
	public User(){}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public float getProcess(){
		return process;
	}
	public boolean isUser(String name) throws SQLException,ClassNotFoundException{
		boolean flag = false;
		DBConn udb = new DBConn();
		Connection conn = udb.getUserDBconn();
		String sql = "select * from users where name=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()){
			flag = true;
			this.userPwd = rs.getString("pwd");
		}
		udb.closeUserDB(conn, pstmt, rs);
		return flag;
	}
	public boolean isPwd(String pwd){
		boolean flag = false;
		if(this.userPwd.equals(pwd)){
			flag = true;
		}
		return flag;
	}
	public void createUser(String newName,String newPwd){
		DBConn udb = new DBConn();
		Connection conn = udb.getUserDBconn();
		String sql = "insert into users values(?,?)";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newName);
			pstmt.setString(2, newPwd);	
			int n  = pstmt.executeUpdate();
			udb.closeUserDB(conn, pstmt, null);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	public void setProcess(float process,String userName){
		DBConn udb = new DBConn();
		Connection conn = udb.getUserDBconn();
		String sql = "update users set process="+process+"where name="+userName;
		PreparedStatement pstmt;
		try{
			pstmt = conn.prepareStatement(sql);
			int n = pstmt.executeUpdate();
			udb.closeUserDB(conn, pstmt, null);
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
