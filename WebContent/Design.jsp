<html>
<style>

h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}




/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
/*   background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4); */
  
   background: -webkit-linear-gradient(left, #585b5b, #efeae8);
  background: linear-gradient(to right, #585b5b,  #efeae8); 
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}

.header	{

			 background: -webkit-linear-gradient(left, #585b5b, #efeae8);
  			 background: linear-gradient(to right, #585b5b, #efeae8);
             font-family: 'Roboto', sans-serif;
			 /* text-align: left; */
			 border-radius: 50px; padding: 2px;
		}
		
		.title	{
			text-align: left; background-color:  rgba(255,255,255,0.3);
			border-radius: 2px;
		}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}

</style>


<body>
<section>
  <!--for demo wrap-->
  <!-- <h1>CREATE EXPENSE REPORT</h1> -->
  
  
		
			<img src="logo.png" alt="office logo" width="10%" height="10%">
			<h1>Create Expense Report</h1>
			<h2>Expense Report Entry</h2>
			<table>
				<tr>
				<th>Report ID</th>
				<th><input type="text" name="rid" required></th>
			</table>
		
		<div class = "title">
			<nav><h3>General Information</h3></nav>
		</div>
		
		<div>
		<table>
		<tr>
		<!-- <th><h3>Expense Date:</h3></th>
			<th><input type="date"></th> -->
			<th><h4>*Description:</h4></th>
			<th><input type="text" name ="des" required></th>
			<th><h4>Reference: </h4></th>
				<th>	<input id="refe" name="refe" required></th>
			<tr>
			
			
			<!-- <div class="business-purpose" style="width:200px;"> -->
			<th><h4>*Business Purpose:</h4></th>
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
  			 <th><h4>Comment:</h4></th> 
			<th><textarea id="comment" name="comment" ></textarea></th>
  			
  			<tr>
  			<th><h4>*Default Location:</h4></th>
  			<th><input type="text" name="location" placeholder="country" required></th>
  			<!-- <th><a href="#">User Defaults</a></th> -->
  			
  			<!-- <tr><th><h3>*Attachments:</h3></th>
				<th><input type="file" name="attachments" value="attachments" ></th> -->
		</tr>
		</table>
		</div>
		
		<div class = "title">
			<nav><h3>Details</h3></nav>
		</div>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Code</th>
          <th>Company</th>
          <th>Price</th>
          <th>Change</th>
          <th>Change %</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
        <tr>
          <td>AAC</td>
          <td>AUSTRALIAN COMPANY </td>
          <td>$1.38</td>
          <td>+2.01</td>
          <td>-0.36%</td>
        </tr>
        <tr>
          <td>AAD</td>
          <td>AUSENCO</td>
          <td>$2.38</td>
          <td>-0.01</td>
          <td>-1.36%</td>
        </tr>
        <tr>
          <td>AAX</td>
          <td>ADELAIDE</td>
          <td>$3.22</td>
          <td>+0.01</td>
          <td>+1.36%</td>
        </tr>
        <tr>
          <td>XXD</td>
          <td>ADITYA BIRLA</td>
          <td>$1.02</td>
          <td>-1.01</td>
          <td>+2.36%</td>
        </tr>
      </tbody>
    </table>
  </div>
</section>


<!-- follow me template -->
<!-- <div class="made-with-love">
  Made with
  <i>♥</i> by
  <a target="_blank" href="https://codepen.io/nikhil8krishnan">Avishek</a>
</div> -->

<div class="made-with-love">
  			Copyright &copy; www.scb.com
  		</div>

<script>
//'.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();
</script>

</body>
</html>