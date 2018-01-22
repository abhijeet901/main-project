<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="span5">
            <table class="table table-striped table-condensed" border="3">
        <tr class="warning">
        
          <th>Cart ID</th>
          <th>Image</th>
            <th>Product Name</th>
            <th>Product Quantity</th>
            
            <th>Product Price</th>
            <th>Product Delete</th>
              <th>Product Edit</th>
            </tr>
<c:forEach items="${cartlist}" var="cart">
<c:url value="/images/${cart.proid}.jpg" var="imageurl"></c:url>
                
                <tr class = "info">
               
               
                    <td><img src="${imageurl}" height="50" width="50"></td>
                    <td>${cart.cartid}</td>
                    <td>${cart.proname}</td>
                    <td>${cart.proquantity}</td>
                    
                    <td>${cart.proprize}</td>
                    
                    <td><a href="deletecart?caid=${cart.cartid}">Delete</a></td>
                    <td><a href="editcart?pid=${cart.cartid}">Edit</a></td>
                    
                    
                      <br>
                   
            </tr>
            </c:forEach>
                  
            
    </table>
    </div> </div> </div>
    <table>
    <tr><td></td><td></td><td></td><td>Total:${total}</td></tr>
    </table>
<a href="checkout">Checkout </a><br>
      
</body>
</html>
<%@include file="footer.jsp" %>