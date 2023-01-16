<%@ page import="java.sql.*"%>
<%
    String rutDueno = request.getParameter("rutDueno");   
    String tipoMascota = request.getParameter("tipoMascota");
    String edad = request.getParameter("edad");
    String nombreMascota = request.getParameter("nombreMascota");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/petsmile",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into mascota(rutDueno, tipoMascota, edad, nombreMascota) values ('" + rutDueno + "','"
    + tipoMascota + "','" + edad + "','" + nombreMascota + "')");

    if (i > 0) {
        response.sendRedirect("success.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>