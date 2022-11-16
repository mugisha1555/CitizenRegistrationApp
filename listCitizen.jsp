<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body> 
<h1> List of citizens </h1>
<table border="2">
 <tr>
    <th>national_id</th>
    <th>names</th>
    <th>weight/kg</th>
    <th>height/m</th>
    <th>date_of_birth</th>
    <th>Delete</th>
    <th>Edit</th>
 </tr>
 <% 
 DriverManager.registerDriver(new org.postgresql.Driver());
Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ububiko" , "postgres", "mugisha123");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from citizen");
while (rs.next()){
    String ni = rs.getString(1);
    String na = rs.getString(2);
    String we = rs.getString(3);
    String he = rs.getString(4);
    String dt = rs.getString(5);

 %>
     <tr>
        <td><%=ni%></td>
        <td><%=na%></td>
        <td><%=we%></td>
        <td><%=he%></td>
        <td><%=dt%></td>
        <td><a href="deleteCitizen.jsp?id=<%=ni %>">Delete</a></td>
        <td><a href="editCitizenForm.jsp?id=<%=ni %>">Edit</a></td>
     </tr>
  <% 
     }
     con.close();
  %>
</table>
</body>
</html>