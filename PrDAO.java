package Productreg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PrDAO {

	private Connection conn;
	private ResultSet rs;
	
	public PrDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/PRODUCT?serverTimezone=UTC";
			String dbID = "root";
			String dbPassword = "2017038003";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	public int getNext() {
		String SQL = "SELECT id FROM BEAN ORDER BY id DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int write(String name, String category, int price, String content) {
		String SQL = "INSERT INTO BEAN VALUES(?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			pstmt.setString(2, category);
			pstmt.setInt(3, price);
			pstmt.setString(4, content);
			pstmt.setString(5, getDate());
			pstmt.setInt(6, 1);
			pstmt.setInt(7,getNext());
			return pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public ArrayList<Bean> getList(int pageNumber){
		
		String SQL = "SELECT * FROM BEAN WHERE id < ? AND bbsavailable = 1 ORDER BY id DESC LIMIT 6";
		ArrayList<Bean> list = new ArrayList<Bean>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,getNext() - (pageNumber - 1) * 6);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Bean bean = new Bean();
				bean.setName(rs.getString(1));
				bean.setCategory(rs.getString(2));
				bean.setPrice(rs.getInt(3));
				bean.setContent(rs.getString(4));
				bean.setBbsdate(rs.getString(5));
				bean.setBbsavailable(rs.getInt(6));
				bean.setId(rs.getInt(7));
				list.add(bean);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM BEAN WHERE id < ? AND bbsavailable = 1 ";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,getNext() - (pageNumber - 1) * 6);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false; 
	}
	public Bean getPro(int id) {
		String SQL = "SELECT * FROM BEAN WHERE id = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Bean bean = new Bean();
				bean.setName(rs.getString(1));
				bean.setCategory(rs.getString(2));
				bean.setPrice(rs.getInt(3));
				bean.setContent(rs.getString(4));
				bean.setBbsdate(rs.getString(5));
				bean.setBbsavailable(rs.getInt(6));
				bean.setId(rs.getInt(7));
				return bean;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
		
	}
	
}

