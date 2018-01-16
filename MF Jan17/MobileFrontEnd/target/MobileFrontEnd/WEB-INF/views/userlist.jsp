<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"type="text/javascript"></script>
<title>Insert title here</title>
<style>
.navbar-default {
    background-color: #0A0A2A;
    border-color: #D5D5D5;
}
</style>
</head>
<body>
<nav class="navbar navbar-default">
<div class="container-fluid">
<ul class="nav navbar-nav">
<li><a href="userlist" style="color:white;">USER</a></li>
<li><a href="category" style="color:white;">CATEGORY</a></li>
<li><a href="supplier" style="color:white;">SUPPLIER</a></li>
<li><a href="product" style="color:white;">PRODUCT</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="mainpage" style="color:white;">LOGOUT <span class="glyphicon glyphicon-log-out"></span></a></li></ul>
</div></nav>
 <h2>All Users in System</h2>

    <table border="1">
        <tr>
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
        <c:if test="${!empty userlist}">
            <c:forEach items="${userlist}" var="user">
                <tr>
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
            </c:forEach>
            </c:if>
    </table>
</body>
</html>



