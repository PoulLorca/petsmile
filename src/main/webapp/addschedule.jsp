<%@ page import="java.sql.*"%>
<%
    String idMascota = request.getParameter("idMascota");   
    String rutDueno = request.getParameter("rutDueno");
    String nombreMascota = request.getParameter("nombreMascota");
    String hora = request.getParameter("hora");
    String fecha = request.getParameter("fecha");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/petsmile",
            "root", "root");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into agenda(idMascota, rutDueno, nombreMascota, hora, fecha) values ('" + idMascota + "','"
    + rutDueno + "','" + nombreMascota + "','" + hora + "','" + fecha + "')");

    if (i > 0) {
        response.sendRedirect("success.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>