<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


 
	<style>
	     body{
	     		 background-image: url("wall1.jpg");
  				 background-repeat:no-repeat;
   				 background-size:cover;
	     }
		.astC{
		color: red;
		}
		h2 {
			color: black; font-family:'Times new Roman';
		}
		
		h4, h5 {
			color: black; font-family:'Times new Roman'; text-align:left;
		}
		h1 {
			color: blue; font-family:'cosolan'; text-decoration:underline;
			text-align:center;
		}
		h3 {
			color: blue; font-family:'Times new Roman'; text-align:left;
		}
		th {
			align:"right"; margin-left: 30px;
		}
		
		.header	{
			text-align: left;
			border-radius: 50px; padding: 2px;
		}
		.title	{
			text-align: left; 
			border-radius: 2px;
		}
		.text	{
			text-align:right; height:10%; padding: 0px;
		}
		
		.click	{
			text-align: right; margin:left:400px; background-color: light blue; border: solid blue 3px;
			border-radius: 50px; padding: 2px; width: 300px; side:"right"
		}
		
		/* Create two equal columns that floats next to each other */
		.column {
		    float: left;
		    width: 50%;
		}
		/* Clear floats after the columns */
		.row:after {
		    content: "";
		    display: table;
		    clear: both;
		}
		
		/* .business-purpose {
			text-align: left; height: 15%;
		} */
		
		.footer	{
			text-align:center;  color:black;
			border-radius: 4px; height:10%;
		}
	</style> 
	
	<head>
		<!-- List of tags you can write in head
		title, meta, script, style, link -->
		<title>Expense Page</title>
		<!-- <link href="pic1.ico" type="image/icon" rel="icon">
		<link href = "webstyles.css" type = "text/css" rel = "stylesheet"> -->
	</head>
	<body>
	<form action="insert">
		<div class = "header">
		
			<img src="logo.png" alt="office logo" width="10%" height="10%">
			<h1>Create Expense Report</h1>
			<h2>Expense Report Entry</h2>
			<!-- <table>
				<tr>
				<th>Report ID</th>
				<th><input type="text" name="rid" required>
			</table> -->
		</div>
		
		<div class = "title">
			<nav><h3>General Information</h3></nav>
		</div>
		
		<div>
		<table>
		<tr>
		<!-- <th><h3>Expense Date:</h3></th>
			<th><input type="date"></th> -->
			<th><h4><b class="astC">*</b>Description:</h4></th>
			<th><input type="text" name ="des" pattern="[A-Za-z]*" size="20" title="Enter Valid Description" required></th>
			<th><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b class="astC">*</b>Reference: </h4></th>
				<th>	<input id="refe" name="refe" pattern="[0-9]{4}" maxlength="4" title="Enter 4 Digit Valid Number"></th>
			<tr>
			
			<br>
			<!-- <div class="business-purpose" style="width:200px;"> -->
			<th><h4><b class="astC">*</b>Business Purpose:</h4></th>
           <th><select name=option required>
			
			    <option value="" selected disabled hidden>Select</option>
			    <option value="Training">Training</option>
			    <option value="Celebrations">Celebrations</option>
			    <option value="Conferences">Conferences</option>
			    <option value="CustomerVisits">CustomerVisits</option>
			    <option value="GeneralTravelAndExpense">GeneralTravelAndExpense</option>
			    <option value="OffSiteExpense">OffSiteExpense</option>
			    <option value="RegionalMeetings">RegionalMeetings</option>
			    <option value="StaffEntertainment">StaffEntertainment</option>
			    <option value="Transitions">Transitions</option>
			    <option value="Workshops">Workshops</option>
			    

  			</select></th>
  			<th><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b class="astC">*</b>Employee Id:</h4></th>
  			<th><input type="text" name="empid" pattern="[0-9]{7}" maxlength="7" title="Enter 7 Digit Employee ID" required></th>
  			
  			<tr>
  			<th><h4><b class="astC">*</b>Default Location:</h4></th>
  			<th><select name=location required>
            
                <option value="" selected disabled hidden>Select your country/city</option>
                <option value="Bangalore">Bangalore</option>
                <option value="Chennai">Chennai</option>
                <!-- <option value="Australia">Australia</option>
                <option value="Bangladesh">Bangladesh</option>
                <option value="Cambodia">Cambodia</option>
                <option value="China">China</option>
                <option value="Hong Kong">Hong Kong</option>
                <option value="Poland">Poland</option> -->
            </select></th>
             <th><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Comment:</h4></th> 
			<th><textarea id="comment" name="comment" ></textarea></th>
  			
  			<!-- <th><a href="#">User Defaults</a></th> -->
  			
  			<!-- <tr><th><h3>*Attachments:</h3></th>
				<th><input type="file" name="attachments" value="attachments" ></th> -->
				
		</tr>
		<tr>
		<td>
		<form action="/upload" method="post" enctype="multipart/form-data">
		<input type="file" name="file" required /><br/>
		</form>
		</td>
		</tr>
		</table>
		</div>

<!--Make sure the form has the autocomplete function switched off:-->
<!-- <form autocomplete="off" action="/action_page.php">
  <div class="autocomplete" style="width:300px;">
    <input id="myInput" type="text" name="myCountry" placeholder="Country">
  </div> 
  
</form> -->
		<div class = "title">
			<nav><h3>Details</h3></nav>
		</div>
		<div>
		<table id="traveltable">
			<tr>
				<th id="expensetype"><b class="astC">*</b>Expense Type</th>
			   	<th id="edate"><b class="astC">*</b>Expense Date</th>
			   	<th id="curr"><b class="astC">*</b>Currency</th>
			   	<th id="ptype"><b class="astC">*</b>Payment Type</th>
			   	<th id="amtspent"><b class="astC">*</b>Amount Spent</th>
			  
			   <th id="subhead"></th>
			</tr>
			<tr>
				<th><select name="traveltype1" id="traveltype1" required>
				    <option>Air Travel</option>
				    <option>AUTO</option>
				    <option>TAXI</option>
				    <option>Train Travel</option>
				    </select>
				</th>
				
				 <!-- <td><input type ="text" name="etype" id="date1"/></td> 
				<td><input type = "text" name="edate" id="travel1" onblur="update(this)" required/></td>
				<td><input name="espent" id="travel1" onblur="update(this)" required/></td>
				<td><input name="currency" id="travel1" onblur="update(this)" required/></td> -->
				
				 <td><input type="date" name="edate" id="date1" required/></td> 
				
				 <th><select name="currency" id="travel1" >
                    <option>INR</option>
                    <!-- <option>AUD</option>
                    <option>BDT</option>
                    <option>KHR</option>
                    <option>CNY</option>
                    <option>HKD</option>    
                    <option>PLN</option>  -->               
                    </select>
                </th>
				<td><input name="etype" id="travel1" onblur="update(this)" required/></td>
				<td><input type = "text" name="espent" id="travel1" onblur="update(this)" required/></td>
				<!-- <td><input name="sub1" id="sub1" value="0.00"  required/></td> -->
			</tr>
			
			 <tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr> 
			  <!--  <th colspan="3" id="totalhead">*TOTAL</th> -->
			  
			<tr>
			   <td colspan="6"><h6 style="color:red">* - Indicates a required field</h6></td>
			</tr>
			</table>
			</div>
			
	<!-- 		<div> <h4 style="color: green"> TOTAL</h4><input type = "text" name = "total"></div> -->
			 
			  </br>
			  </br>
			<div>
		
				<input type="submit" value="SUBMIT" type="color">
				
			</div>
			
			<br>
			



		<div class="footer">
  			<strong>Copyright &copy; www.scb.com </strong>
  		</div>
  		

 
  		</form>
	</body>	
</html>