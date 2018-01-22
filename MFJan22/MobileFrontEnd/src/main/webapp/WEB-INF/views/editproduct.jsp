<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit product</title>
</head>
<body>
<form:form action = "editproduct"  method="post" modelAttribute="product1">
<label><b>product id</b></label>
<form:input type ="text" path="id" value="${productdata.id}" readonly="true"/><br>
<label><b>product name</b></label>
<form:input type ="text" path ="name" value="${productdata.name}"/><br>
<label><b>product prize</b></label>
<form:input type ="text" path ="prize" value="${productdata.prize}"/><br>
<label><b>quantity</b></label>
<form:input type ="text" path ="quantity" value="${productdata.quantity}"/><br>
<label><b>description</b></label>
<form:input type ="text" path ="description" value="${productdata.description}"/><br>
<tr>
<td>
<form:select path="CatId">
<c:forEach items="${categories }" var="c">
<form:option value="${c.id }">${c.categoryName }</form:option>
</c:forEach>
</form:select>


<input type="submit" value="editproduct"/>
</form:form>
<%@include file="footer.jsp" %>
</body>
</html>