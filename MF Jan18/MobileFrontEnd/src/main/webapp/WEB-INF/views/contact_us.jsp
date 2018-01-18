<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br><br><br>
<div id="contact" class="container">
  <h1 class="text-center">Contact</h1>
  

  <div class="row">
    <div class="col-md-4">
      <p>Customer? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>India</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +917008564573</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email:abhijitpati90@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>
<br><br><br><br><br>
<%@include file="footer.jsp" %>
</body>
</html>
