<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>      
<!DOCTYPE html>
<html>
<head>
  <title>${param.title}</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    .header {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }

    .header h1 {
      margin: 0;
      font-size: 24px;
      letter-spacing: 2px;
    }

    .nav {
      background-color: #444;
      padding: 10px;
      text-align: center;
    }

    .nav a {
      color: #fff;
      text-decoration: none;
      margin: 0 10px;
      font-weight: bold;
    }

    .nav a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="header">
    <h1>Stark Industries</h1>
  </div>
  <div class="nav">
    <a href="${pageContext.request.contextPath}/site?page=home">Home</a>
    <a href="${pageContext.request.contextPath}/operation?page=listusers">List Users</a>
    <a href="${pageContext.request.contextPath}/operation?page=addusers">Add User</a>
    <!-- <a href="#">Services</a>
    <a href="#">Contact</a> -->
  </div>

  <!-- Add the content of your JSP page here -->

</body>
</html>
