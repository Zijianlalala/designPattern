package com.jdbc;
import java.sql.*;

import com.jdbc.DBConn;
public class DBUtil {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public DBUtil(){}
	
	public int update(String sql){
		int n = -1;
		DBConn db = new DBConn();
		try{
			conn = db.getUserDBconn();
			pstmt = conn.prepareStatement(sql);
			n = pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		db.closeUserDB(conn, pstmt, rs);
		return n;
	}
	
	public ResultSet QuerySQL(String sql){
		DBConn db = new DBConn();
		try{
			conn = db.getUserDBconn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			return rs;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		return null;
	}
}
