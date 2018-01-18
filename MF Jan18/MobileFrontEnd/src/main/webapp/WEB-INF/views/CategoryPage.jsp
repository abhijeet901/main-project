<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"type="text/javascript"></script>
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
<fieldset>
<form:form action="saveCategory" commandName="category" method="post"> 
<!--<tr>
  <th>id</th>
<td>
<form:input type="hidden" path="catid"/></td></tr> -->
<tr>
<th>Category Name</th>
<td><form:input type="text" path="catname" /></td></tr><br><br>
<tr>
<th>Category Description</th>
<td><form:input type="text" path="catdesc" /></td></tr><br><br>
<tr>   
    
     <td><td colspan="2"><input type="submit" class="btn btn-success" value="Add"></td>
        
     </tr>
</form:form>
</fieldset>
</center>
<table style="width:100%" border="1">
            <tr>
                <th>Category id</th>
                <th>Category name</th>
                <th>Category description</th>
                <th>delete</th>
                <th>Edit</th>
            </tr>

            <c:forEach items="${catlist}" var="category">
                <tr>
                    <td>${category.catid}</td>
                    <td>${category.catname}</td>
                    <td>${category.catdesc}</td>
                    <td><a href="catdelete?cid=${category.catid}">delete</a></td>
                    <td><a href="catedit?cid=${category.catid}">Edit</a></td> 
				</tr>
			</c:forEach>
</table>		
<%@include file="footer.jsp" %>
</body>
</html>