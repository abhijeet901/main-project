<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<center>
<h2>Edit here!!</h2>
<form:form action="updateuser" method="post" commandName="user1">
<fieldset>
    <label><b>user name</b></label>
    <form:input type="text" path="username" value="${userdata.username}" /><br>
    <br><label><b>firstName</b></label>
    <form:input type="text" path="firstname" value="${userdata.firstname}" /><br>
    <br><label><b>lastName</b></label>
    <form:input type="text" path="lastname" value="${userdata.lastname}" /><br>
    <br><label><b>Password</b></label>
    <form:input type="password" path="password" value="${userdata.password}" /><br>
    <br><label><b>Email-Id</b></label>
    <form:input type="email" path="email" value="${userdata.email}" /><br>
    <br><label><b>Phone_no</b></label>
    <form:input type="phoneno" path="phoneno" value="${userdata.phoneno}" /><br>
    <br><label><b>Address</b></label>
    <form:input type="address" path="address" value="${userdata.address}" /><br>
    <a href="userlist"><button type="submit" class="btn btn-success">Submit</button></a>
</fieldset>
</form:form>

</center>
</body>
</html>
