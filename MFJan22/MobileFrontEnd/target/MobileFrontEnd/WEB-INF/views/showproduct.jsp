<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       
             <c:url value="/resources/${productsee.id}.jpg" var="imageurl"></c:url>
             <c:url value="/${productsee.id}" var="addcart"></c:url>
             <img src="${imageurl}" height="700" width="500">
            <table><tr>
                    <td>Product ID:${productsee.id}</td>
                    <tr><td>Product Name:${productsee.name}</td></tr>
                   <tr> <td>Product Price:${productsee.price}</td>  </tr>                 
                   <tr> <td>Product Description:${productsee.description}</td></tr>
                   
                   </table>
      <c:if test="${productsee.quantity>0}">
      <c:if test="${i<8}">   
                
    <form action= "${addcart}" method="get">
</td><br>
<td>


<select name="quantity">

    <option hidden="true"><h4>1</h4></option>
    <c:if test="${productsee.quantity>1}">
    <c:if test="${i<7}">  
    <option name="2" >2</option>
    </c:if>
    </c:if>
    <c:if test="${productsee.quantity>2}">  
    <c:if test="${i<6}">
    <option name="3" >3</option>
    </c:if>
    </c:if>
    <c:if test="${productsee.quantity>3}"> 
    <c:if test="${i<5}"> 
    <option name="4" >4</option>
    </c:if>
    </c:if>
    <c:if test="${productsee.quantity>4}">
    <c:if test="${i<4}">
    <option name="5" >5</option>
    </c:if>
    </c:if>
    <c:if test="${productsee.quantity>5}">
    <c:if test="${i<3}">
    <option name="6">6</option>
    </c:if>
    </c:if>
    <c:if test="${productsee.quantity>6}">
    <c:if test="${i<2}">
    <option name="7" >7</option>
    </c:if>
    </c:if>
    <c:if test="${i<1}">
    <c:if test="${productsee.quantity>7}">
    <option name="8" >8</option>
    </c:if>
    </c:if>
    
</select><br><br>
<button type="submit" >
<span  >AddCart</span></button>
<br><br>

</form>
    </c:if>
</c:if>
<c:if test="${productsee.quantity==0}">
<p>No stock </p>
</c:if>
<c:if test="${i>7}">
<p>Maximum limited reached</p>
</c:if>

</body>
</html>
<%@include file="footer.jsp"%>
