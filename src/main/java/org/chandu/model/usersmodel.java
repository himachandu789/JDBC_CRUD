package org.chandu.model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.chandu.entity.User;



public class usersmodel {
	public List<User> listusers(DataSource dataSource) {
		
		List<User> listusers = new ArrayList<>();

		
		Connection connection = null;
		java.sql.Statement stmt = null;
		ResultSet rs = null;
		
		
		
		try {
			connection = dataSource.getConnection();
			String query = "select * from users";
			stmt = connection.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				
				int id = rs.getInt("id");
				
				 String name = rs.getString("name");
	                String email = rs.getString("email");
	                User user = new User(id,name, email);
	                listusers.add(user);
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listusers;
	}

	public void addUser(DataSource dataSource, User newUser) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement stmt = null;
		connection = dataSource.getConnection();
		String username = newUser.getName();
		String email = newUser.getEmail();
		String query = "insert into users(name,email) values (?,?)";
		stmt = connection.prepareStatement(query);
		stmt.setString(1,username);
		stmt.setString(2,email);
		stmt.execute();
		
	
		
	}

	public void updateUser(DataSource dataSource, User updatedUser) throws SQLException {
		Connection connection = null;
		PreparedStatement stmt = null;
		connection = dataSource.getConnection();
		int userId = updatedUser.getId();
		String username = updatedUser.getName();
		String email = updatedUser.getEmail();
		String query = "update users set name = ?,email = ? where id = ? ";
		stmt = connection.prepareStatement(query);
		stmt.setString(1,username);
		stmt.setString(2, email);
		stmt.setInt(3, userId);
		
		 stmt.executeUpdate();
		
		
		
	}

	public void deleteuser(DataSource dataSource,int id) throws SQLException {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement stmt = null;
		connection = dataSource.getConnection();
		
		String query = "delete from users where id = ?";

		stmt = connection.prepareStatement(query);
		stmt.setInt(1, id);
		
		 stmt.executeUpdate();
		
		
	}

}
