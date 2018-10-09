<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="com.scb.bean.*" %>
<html>
    <style> 
        table, th, td 
        {   border: 1px solid black;
            border-color: #faffce;
            border-width :1.5px;
            align: left;
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
    <head>
        <title>Select All</title>
    </head>
    <!--#b0e0e6  -->
    
    <body bgcolor="#0f1110" text="white">
        <center> 
            <h2>Expense Report Record</h2>
            <table width=100%>
        
                
                <% 
                    ArrayList<MyBeans> l = (ArrayList<MyBeans>)session.getAttribute("list"); 
                    for(MyBeans mb : l)
                    {
                %>
        
            <tr>
            <td> RID</td>
            <td>    <%= mb.getRid() %></td> </tr>
            <tr>
            <td> Description </td>
            <td>    <%= mb.getDes() %> </td></tr>
            <tr>
            <td>Reference</td>
            <td>    <%= mb.getRefe()  %> </td></tr>
            <tr>
            <td> Business Purpose </td>
            <td>    <%= mb.getOptn() %> </td></tr>
            <tr>
            <td> Comments</td>
            <td>    <%= mb.getComent() %> </td></tr>
            <tr>
            <td> Location </td>
            <td>    <%= mb.getLocation() %> </td></tr>
            <tr>
            <td> Employee Id </td>
            <td>    <%= mb.getEmpid() %> </td></tr>
            <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <td><div align="center"><p style="font-size:22px; color:#f90404; font-weight:bold; font-style:italic;">
    Expense Report Category
</p></div> </td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
            <tr>
            <td> Expense Type 1 </td>
            <td>    <%= mb.getTraveltype1() %> </td></tr>
            <tr>
            <td> Expense Date 1 </td>
            <td>    <%= mb.getEdate() %> </td></tr>
            <tr>
            <td>  Currency Type 1 </td>
            <td>    <%= mb.getCurrency() %> </td></tr>
            <tr>
            <td> Payment Type 1 </td>
            <td>    <%= mb.getEtype() %> </td></tr>
            <tr>
            <td> Amount spent 1 </td>
            <td>    <%= mb.getEspent() %> </td></tr>
            <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
            

                <%              
                    }
                %>
                
            </table>
            <form action="fetch" method="post">
            <br>
				<input type="submit" value="fetch" />
			</form>
    </center> 
    </body>
</html>