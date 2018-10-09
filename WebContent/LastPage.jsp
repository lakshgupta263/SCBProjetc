<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="com.scb.bean.*" %>
<html>
<head>
<script>
function myFunction() {
	  var copyText = document.getElementById("myInput");
	  copyText.select();
	  document.execCommand("copy");
	  alert("Copied the text: " + copyText.value);
	}
</script>
<style>
body{
	background-image: url("15.jpg");
	}
	div.set{
	text-align:center;
	padding: 40px 0;
	}
	div.logo{
	text-align:center;
	}
	div.prop{
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RID display</title>
</head>
<body>
<div class="logo"><img style="padding-top:200px" height="100" src="logo.png" width="272" >
</div>
</div>
<div class="set">

<font color="white"><h4 class="prop">Copy your Rid</h4></font>
<font color="white"><h3 class="prop">A small step towards a more greener World</h3></font>
<input type="text" value=${msg} id="myInput" placeholder="Report Id"><br><br>
<button onclick="myFunction()">Copy text</button>
<button><a href="SecondPage.jsp">Home</a></button>
</div>
</body>
</html>