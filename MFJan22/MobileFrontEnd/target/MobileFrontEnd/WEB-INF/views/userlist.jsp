<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.navbar-default {
    background-color: #0A0A2A;
    border-color: #D5D5D5;
}
</style>
</head>
<body>
 <h2>All Users in System</h2>
 <div class="container">
<table class="table" border="3">
            <thead>
            <tr class="info">
          <th>id</th>
            <th>Username</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Password</th>
            <th>Email</th>
            <th>phoneno</th>
            <th>address</th>
            <th>Delete</th>  
            <th>Edit</th>  
        </tr>
        </thead>
        <c:if test="${!empty userlist}">
            <c:forEach items="${userlist}" var="user">
                <tbody>
                <tr class="warning">
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                     <td>${user.firstname}</td>
                      <td>${user.lastname}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td>
                    <td>${user.phoneno}</td>
                    <td>${user.address}</td>
                    <td><a href="delete?uid=${user.id}">delete</a></td>
                    <td><a href="edit?uid=${user.id}">edit</a></td>
            </tr>
            </tbody>
            </c:forEach>
            </c:if>
    </table>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>



