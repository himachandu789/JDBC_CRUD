package org.chandu;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.chandu.entity.User;
import org.chandu.model.usersmodel;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/operation")
public class OperationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/project")
	private DataSource dataSource;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		
		case "listusers":
			listusers(request, response);

			break;
		case "addusers":

			request.getRequestDispatcher("addusers.jsp").forward(request, response);
			break;
		case "updateuser":
			request.getRequestDispatcher("update.jsp").forward(request, response);
			break;
		case "deleteuser":
			
			String idParam = request.getParameter("id");
			int id = 0;
			if (idParam != null && !idParam.isEmpty()) {
			    id = Integer.parseInt(idParam);
			}  
			try {
				deleteUser(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			listusers(request, response);
			
			
			break;
			
			
			
			

		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);

		}

	}
	private void deleteUser(int id) throws SQLException {
		new usersmodel().deleteuser(dataSource, id);
		
	}
	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String operation = request.getParameter("form");
		operation = operation.toLowerCase();
		switch (operation) {
		case "adduseroperation":
			User newUser = new User(request.getParameter("username"), request.getParameter("email"));

			try {
				addUserOperation(dataSource,newUser);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			listusers(request, response);

			break;
		case "updateuseroperation":
			
			String idParam = request.getParameter("id");
			int id = 0; // Default value or appropriate fallback value if necessary
			if (idParam != null && !idParam.isEmpty()) {
			    id = Integer.parseInt(idParam);
			}  
			
			User updatedUser = new User(id,request.getParameter("user_name"),request.getParameter("user_email"));
			
			try {
				updateuserOperation(dataSource,updatedUser);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			listusers(request, response);
			
			break;
			

		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;

		}

	}

	private void updateuserOperation(DataSource dataSource, User updatedUser) throws SQLException {

		new usersmodel().updateUser(dataSource,updatedUser);
		
		return;
		
		
	}
	private void addUserOperation(DataSource dataSource,User newUser) throws SQLException {
		// TODO Auto-generated method stub
		new usersmodel().addUser(dataSource,newUser );
		return;

	}

	public void listusers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		usersmodel usersModel = new usersmodel();
		List<User> listUsers = usersModel.listusers(dataSource);
		request.setAttribute("listusers", listUsers);

		request.getRequestDispatcher("listusers.jsp").forward(request, response);

	}

}
