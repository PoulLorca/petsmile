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

<h1>Owners</h1>
<table border="1">
<tr>
<td>Rut</td>
<td>Name</td>
<td>Last Name</td>
<td>Address</td>
<td>Email</td>
<td>Phone</td>
<td>Pet's name</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from dueno";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Rut") %></td>
<td><%=resultSet.getString("nombre") %></td>
<td><%=resultSet.getString("apellido") %></td>
<td><%=resultSet.getString("direccion") %></td>
<td><%=resultSet.getString("correo") %></td>
<td><%=resultSet.getString("telefono") %></td>
<td><%=resultSet.getString("nombreMascota") %></td>

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