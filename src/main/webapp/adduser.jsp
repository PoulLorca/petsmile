<%@ page import="java.sql.*"%>
<%
    String Rut = request.getParameter("rut");   
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String direccion = request.getParameter("direccion");
    String correo = request.getParameter("correo");
    String telefono = request.getParameter("telefono");
    String nombreMascota = request.getParameter("nombreMascota");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/petsmile",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into dueno(Rut, nombre, apellido, direccion, correo, telefono, nombreMascota) values ('" + Rut + "','"
    + nombre + "','" + apellido + "','" + direccion + "','" + correo + "', '" + telefono + "','" + nombreMascota + "')");

    if (i > 0) {
        response.sendRedirect("success.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>