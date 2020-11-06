<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
</head>
<body>
<div class="container-fluid ">
      <!-- ROW 1 -->
      <div
        class="row bg-light sticky-top justify-content-between align-items-center "
        style="height: 60px;"
      >
      
        <div class="col-8 text-light" style="font-size: 24px;">
         <nav class="navbar navbar-light bg-light">
		  <a class="navbar-brand" href="#">
		    <img src="http://www.pngimagesfree.com/LOGO/M/Makemytrip/Make-My-Trip-Logo-Vector.png" width="120" height="40" class="d-inline-block align-top" alt="">
		   
		  </a>
		</nav>
        </div>
        <div class="col-2 text-light d-flex justify-content-end">
            <a href="prep_reg_form.htm" >Sign Up</a>
        </div>
         <div class="col-2 text-light d-flex justify-content-end">
        	 <a href="prep_log_form.htm" >Login</a> 
        </div>
       
      </div>
</div>
		

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="img1.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="img2.jpg" style="width:100% ">
 
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="img3.jpg" style="width:100%">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>
</body>
</html>