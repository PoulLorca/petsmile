<%@ page import="java.sql.*"%>
<%
//String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "petsmile";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>

<h1>Schedule</h1>
<table border="1">
<tr>
<td>Pet's id</td>
<td>Owner's rut</td>
<td>Pet's name</td>
<td>Time</td>
<td>Date</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from agenda";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("idMascota") %></td>
<td><%=resultSet.getString("rutDueno") %></td>
<td><%=resultSet.getString("nombreMascota") %></td>
<td><%=resultSet.getString("hora") %></td>
<td><%=resultSet.getString("fecha") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>