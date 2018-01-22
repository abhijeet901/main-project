<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
<title>Supplier</title>
<style>
body
{
backgroud-color:#5CCCAB;
}
 .navbar-default {
    background-color:#0A0A2A;
    border-color: #D5D5D5;
}
#grad1 {
    height: 200px;
    background: red; /* For browsers that do not support gradients */
    background: linear-gradient(to bottom right, rgba(255,0,0,0), rgba(255,0,0,1)); /* Standard syntax (must be last) */
}

.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #333;
    border-bottom-color: #333;
}
</style>
</head>
<body>

<center>
<form:form action="SaveSupplier" commandName="supplier" method="post">

<!--<tr>
  <th>id</th>
<td><form:input type="hidden" path="supplierid"/></td></tr> -->
<tr>
<th>Supplier name</th>
<td><form:input type="text" path="suppliername" /></td></tr><br><br>
<tr>
<th>Supplier Address</th>
<td><form:input type="text" path="supplieraddress" /></td></tr><br><br>
<tr>   
    
     <td><td colspan="2"><input type="submit" class="btn btn-success" value="Add"></td>
        
     </tr>
</form:form>
</center>

<div class="container">
<table class="table" border="3">
            <thead>
            <tr class="info">
            <tr>
                <th>Supplier id</th>
                <th>Supplier name</th>
                <th>Supplier Address</th>
                <th>delete</th>
                <th>Edit</th>
            </tr>
            </thead>

            <c:forEach items="${suplist}" var="supplier">
                <tr>
                    <td>${supplier.supplierid}</td>
                    <td>${supplier.suppliername}</td>
                    <td>${supplier.supplieraddress}</td>
                    <td><a href="supdelete?sid=${supplier.supplierid}">delete</a></td>
                    <td><a href="supedit?sid=${supplier.supplierid}">Edit</a></td>
                     </tr>
			</c:forEach>
</table>
</div>		
<%@include file="footer.jsp" %>
</body>
</html>