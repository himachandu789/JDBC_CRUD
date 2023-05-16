<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="org.chandu.model.usersmodel" %>
<%@ page import="org.chandu.entity.User" %>

<c:import url="/include/header.jsp">
  <c:param name="title" value="UsersList" />
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

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
  }

  th, td {
    padding: 10px;
    text-align: left;
  }

  th {
    background-color: #f2f2f2;
    font-weight: bold;
  }

  tr:nth-child(even) {
    background-color: #f9f9f9;
  }

  tr:hover {
    background-color: #e6e6e6;
  }

  a {
    text-decoration: none;
    color: #337ab7;
  }

  a:hover {
    text-decoration: underline;
  }
</style>

<h1>List of Users</h1>
<hr />

<table border="1">
  <thead>
    <tr>
      <th>User ID</th>
      <th>User Name</th>
      <th>Email</th>
      <th>Operation</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="user" items="${listusers}">
      <tr>
        <td>${user.getId()}</td>
        <td>${user.getName()}</td>
        <td>${user.getEmail()}</td>
        <td>
          <a href="${pageContext.request.contextPath}/operation?page=updateuser&id=${user.getId()}&name=${user.getName()}&email=${user.getEmail()}">Update</a> |
          <a href="${pageContext.request.contextPath}/operation?page=deleteuser&id=${user.getId()}" onclick="if(!confirm('Are you sure to delete the User?')) return false;">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>

<c:import url="/include/footer.jsp"></c:import>
