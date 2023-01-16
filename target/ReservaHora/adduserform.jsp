<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body bgcolor="silver">
        <form method="post" action="adduser.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Rut</td>
                        <td><input type="number" name="rut" value="" /><small>Without dot or verificator digit</small></td>                        
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="apellido" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="direccion" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="correo" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td>Phone</td>
                        <td><input type="number" name="telefono" value="" /></td>
                    </tr>
                    <tr>
                        <td>Pet's name</td>
                        <td><input type="text" name="nombreMascota" value="" /></td>
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