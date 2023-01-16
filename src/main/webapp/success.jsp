<%@ page import= "java.util.ArrayList"
import= "java.util.List"%>
<%	 
    if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
//List<String> data = (List<String>)session.getAttribute("userid");	
%>
Welcome
<br>
<table>
<ul style="list-style-type: none">
<li><a href="adduserform.jsp">Add User</a>
<li><a href="addpetform.jsp">Add Pet</a>
<li><a href="addscheduleform.jsp">Schedule</a>  
<li><a href="viewusers.jsp">View Users</a>
<li><a href="viewpets.jsp">View Pets</a>  
<li><a href="viewschedule.jsp">View Schedule</a>
</ul>
</table>
<br>
 
<a href='logout.jsp'>Log out</a>
<%
    }
%>