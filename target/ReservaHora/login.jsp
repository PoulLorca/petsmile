<%@ page import="java.sql.*"
import= "java.util.ArrayList"%>
<%
    String userName = request.getParameter("username");   
    String password = request.getParameter("password");    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/petsmile",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from usuario where nombreUsuario='" + userName + "' and password='" +password + "'");
        
    if (rs.next()) {
    	/*
    	ResultSet personalData;
    	personalData = st.executeQuery("select * from persona where rut='" + rs.getString(1) + "' ");
    	ResultSetMetaData rsmd = personalData.getMetaData(); 
		int columnCount = rsmd.getColumnCount();
	
		ArrayList<String> personalInfo = new ArrayList<>(columnCount);
		if (personalData.next()){
	    	int i = 1;
	   		while(i <= columnCount) {	   			
	        	personalInfo.add(personalData.getString(i++));
	   		}
	   	}
	   	*/
    	session.setAttribute("userName",userName);
        //session.setAttribute("userid", personalInfo);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>