<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}

</style>
<body class="w3-black">

<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  <img src="scb1.png" style="width:100%">
 
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-black">
    <i class="fa fa-home w3-xxlarge"></i>
    <p>HOME</p>
  </a>
  <a href="guidelines.jsp" id="update" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-edit w3-xxlarge"></i>
    <p>Guidelines</p>
  </a>
  <a href="home.jsp" id="create" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-plus w3-xxlarge"></i>
    <p>CREATE EXPENSE REPORT</p>
  </a>
  <a href="hey.jsp" id="view" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-eye w3-xxlarge"></i>
    <p>VIEW EXPENSE REPORT</p>
  </a>
    <a href="delete.jsp" id="delete" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-remove w3-xxlarge"></i>
    <p>DELETE EXPENSE REPORT</p>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a href="#" class="w3-bar-item w3-button" style="width:25% !important">HOME</a>
    <a href="#create" class="w3-bar-item w3-button" style="width:25% !important">CREATE EXPENSE REPORT</a>
    <a href="#update" class="w3-bar-item w3-button" style="width:25% !important">UPDATE EXPENSE REPORT</a>
    <a href="#view" class="w3-bar-item w3-button" style="width:25% !important">VIEW EXPENSE REPORT</a>
    <a href="#delete" class="w3-bar-item w3-button" style="width:25% !important">DELETE EXPENSE REPORT</a>
  </div>
</div>

<!-- Page Content -->
<div class="w3-padding-large" id="main">
  <!-- Header/Home -->
  <header class="w3-container w3-padding-32 w3-center w3-black" id ="home">
    
    <img src="scb2.jpg" alt="boy" class="w3-image" width="9920" height="2000" >
  </header> 

  
    <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    
  </footer>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>
