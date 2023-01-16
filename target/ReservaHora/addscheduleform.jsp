<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body bgcolor="silver">
        <form method="post" action="addschedule.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
					<tr>
                        <td>idMascota</td>
                        <td><input type="number" name="idMascota" value="" /></td>                        
                    </tr>                
                    <tr>
                        <td>Rut</td>
                        <td><input type="number" name="rutDueno" value="" /><small>Without dot or verificator digit</small></td>                        
                    </tr>
                    <tr>
                        <td>Pet's name</td>
                        <td><input type="text" name="nombreMascota" value="" /></td>
                    </tr>
                    <tr>
                        <td>Time</td>
                        <td><input type="time" name="hora" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td><input type="date" name="fecha" value="" /></td>
                    </tr>                    
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><a href="success.jsp">Return</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>