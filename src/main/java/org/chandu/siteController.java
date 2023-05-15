package org.chandu;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/site")
public class siteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public siteController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		case "home":
			request.setAttribute("title", "Homepage");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
			
		default:
			request.setAttribute("title", "Error page");
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
	

		

	

	}
}
