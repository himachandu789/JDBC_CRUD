package org.chandu.model;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/demo")
public class demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

    public demo() {
        // TODO Auto-generated constructor stub
    }

	@Resource(name ="jdbc/project")
	private DataSource dataSource;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		Connection connection = null;
		java.sql.Statement stmt = null;
		ResultSet rs = null;
		
		out.println("Hello JDBC");
		out.println("------------------");
		
		try {
			connection = dataSource.getConnection();
			String query = "select * from mytable";
			stmt = connection.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				
				out.println(rs.getString("fullname"));
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
	}

}
