<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/images/${pro.id}.jpg" var="imageurl"></c:url>
            
              
                	
           <img src="${imageurl}" height="700" width="500">
                	<table>
                   <tr> <td>Product Id: ${pro.id}</td></tr>
                    <tr><td>Product Name:${pro.name}</td></tr>
                  <tr><td>${pro.quantity}</td></tr>
                  <tr><td>Product Description:${pro.description}</td></tr>
                    <tr><td>${pro.prize}</td></tr>
                    
					 </table>  
					
             <c:url value="/${pro.id}" var="addcart"></c:url>
             
             
             
             <form action= "${addcart}" method="get">
</td><br>
<td>

<select name="quantity">

    <option hidden="true"><h4>1</h4></option>
    <option name="2" >2</option>
    <option name="3" >3</option>
    <option name="4" >4</option>
    <option name="5" >5</option>
    <option name="6">6</option>
    <option name="7" >7</option>
    <option name="8" >8</option>
    <option name="9" >9</option>
    <option name="10" >10</option>
    
</select><br><br>
<button type="submit" >
<span  >AddCart</span></button>
<br><br>

</form>
    
  				
<%@include file="footer.jsp" %>
</body>
</html>
