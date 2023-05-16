<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/include/header.jsp">
  <c:param name="title" value="Add Users" />
</c:import>

<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }

  h1 {
    text-align: center;
    padding: 20px;
  }

  form {
    width: 400px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
  }

  label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
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

<h1>Add Users</h1>

<form action="${pageContext.request.contextPath}/operation" method="post">
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" required="required">

  <br>

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required="required">

  <input type="hidden" name="form" value="adduseroperation">

  <br>

  <input type="submit" value="Add User">
</form>

<c:import url="/include/footer.jsp"></c:import>
