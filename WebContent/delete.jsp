<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Delete Your Details</title>
</head>
<body >

<h2></h2>
<style>
body{
   background-image: url("del.jpg");
   background-color: powderblue;
   background-repeat:no-repeat;
   background-size:cover;
   text-align:center;
}
div#content {
    width: 550px;
    height: 350px;
    
    margin: 15px auto;
    text-align:center;
}
div#footer {
    
    
    margin: 15px auto;
    text-align:center;
 

}
 input[type=text], select {
  
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
</style>



<div id="content">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


 <br>
 <form action="delete.spring" >
 <strong>REFERENCE ID</strong>: <input type="text" name="delid" />
<input  type="submit" value="Submit">
</form>
<form action="SecondPage.jsp">
<input  type="submit" value="Back">
</form>
</div>
</form> 

<div id="footer">

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&copy Standard Chartered Global Business Services</h4>
</div>

</body>
</html>