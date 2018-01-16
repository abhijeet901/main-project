<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>

<html lang="en">
<head>
  <title>MainPage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
     <img src="https://knowurhandheld.files.wordpress.com/2015/08/phone-brands.jpg" alt="mobile1" style="width:100%;"> 
     
      </div>

      <div class="item">
         <img src="https://www.justprice.pk/blog/wp-content/uploads/2016/04/Best-budget-Dec2015-970-80-1.jpg" alt="mobile2" style="width:100%;">
       
      </div>
      <div class="item">
         <img src="http://www.sacoma.org.uk/wp-content/uploads/2016/09/cheap-phone-june-2016-970-80.jpg" alt="mobile3" style="width:110%;">
       
      </div>
    
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
 
  <br><br><br><br><br><br><br><br><br><br>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="http://localhost:8080/MobileFrontEnd/userproduct" >
          <img src="https://cdn.macrumors.com/article-new/2017/09/iphonexdesign.jpg" alt="image1" style="width:250%">
          <div class= "caption">
<h3><b>Apple iPhone X (Gold, 32GB)by Apple</b></h3>
  <h4><p>Rs 89,500</p>
You Save:1,790 (2%)</h4>
</div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="http://localhost:8080/MobileFrontEnd/userproduct" >
          <img src="https://images-eu.ssl-images-amazon.com/images/I/51+SibmRSBL._AC_US160_.jpg" alt="image2" style="width:78%">
         <div class= "caption">
<h3><b>Samsung Galaxy S7 (Champagne, 8GB)by Samsung</b></h3>
<h4><p>Rs 50,000</p>
You Save:3,000 (6%)</h4>
</div> 
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="http://localhost:8080/MobileFrontEnd/userproduct" >
          <img src="https://images-eu.ssl-images-amazon.com/images/I/41BvmliwtJL._AC_US160_.jpg" alt="image3" style="width:78%">
<div class= "caption">
<h3><b>Motorola Aqua Supreme+ (Black, 2GB RAM) by Motorola</b></h3>
<h4><p>Rs 30,000</p>
You Save:1,500 (5%)</h4>
</div>
          
        </a>
      </div>
    </div>
     
  </div>
 
</div>
<%@include file="footer.jsp" %>
</body>
</html>
