package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//import com.sun.jdi.connect.spi.Connection;

public class LoginDao {
	
	String sql = "select * from login where uname=? and pass=?";
	
	String url = "jdbc:postgresql://localhost:5433/mario";
	String username="axelor";
	String password = "axelor";
	
	public boolean check(String uname, String pass) {
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection(url);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
}
