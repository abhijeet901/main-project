<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table style="width:100%" border="1">
            <tr>
            		<th>Image</th>
                <th>product id</th>
                <th>product name</th>
                <th>product quantity</th>
                <th>product description</th>
                <th>product prize</th>
                 <th>Status</th>
            </tr>

            <c:forEach items="${prolist}" var="pro">
            <c:url value="/images/${pro.id}.jpg" var="imageurl"></c:url>
            
                <tr>
                	
           <td><img src="${imageurl}" height="50" width="50"></td>
                	
                    <td>${pro.id}</td>
                    <td>${pro.name}</td>
                    <td>${pro.quantity}</td>
                    <td>${pro.description}</td>
                    <td>${pro.prize}</td>
                    <td><a href="orderpro?pid=${pro.id}">Order</a></td>
					   
  				</tr>
  				</c:forEach>
  				
</table>
<%@include file="footer.jsp" %>
</body>
</html>