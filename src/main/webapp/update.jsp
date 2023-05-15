<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/include/header.jsp">
  <c:param name="title" value="Update Users" />
</c:import>

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
  }

  h2 {
    text-align: center;
    padding: 20px;
    color: #333;
  }

  form {
    width: 400px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
    color: #333;
  }

  input[type="text"],
  input[type="email"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-bottom: 15px;
  }

  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>

<h2>Update Database</h2>

<form action="${pageContext.request.contextPath}/operation" method="post">
  <label for="username">Username:</label>
  <input type="text" id="username" name="user_name" value="${param.name}" required="required">

  <br>

  <label for="email">Email:</label>
  <input type="email" id="email" name="user_email" value="${param.email}" required="required">

  <input type="hidden" name="form" value="updateuseroperation">
  <input type="hidden" name="id" value="${param.id}">

  <br>

  <input type="submit" value="Update User">
</form>

<c:import url="/include/footer.jsp"></c:import>
