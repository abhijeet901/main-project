<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>Product Display</title>
</head>
<body>
<div class="container">
<table class="table" border="3">
            <thead>
            <tr class="warning">
            	<th><b>PRODUCT IMAGES</b></th>
                <th><b>PRODUCT ID</b></th>
                <th><b>PRODUCT NAME</b></th>
                <th><b>PRODUCT QUANTITY</b></th>
                <th><b><center>PRODUCT DESCRIPTION</center></b></th>
                <th><b>PRODUCT PRICE</b></th>
                 <th><b>PRODUCT STATUS</b></th>
            </tr>
             </thead>
            <c:forEach items="${prolist}" var="pro">
            <c:url value="/images/${pro.id}.jpg" var="imageurl"></c:url>
            
            
             <tbody>
                <tr class = "info">
                <td><img src="${imageurl}" height="50" width="50"></td>
                	
                    <td>${pro.id}</td>
                    <td>${pro.name}</td>
                    <td>${pro.quantity}</td>
                    <td>${pro.description}</td>
                    <td>${pro.prize}</td>
                    <td><a href="orderpro?pid=${pro.id}">Order</a></td>
					   
  				</tr>
  				<tbody>
  				</c:forEach>
  				
</table>
</div>
<%@include file="footer.jsp" %>
</body>
</html>