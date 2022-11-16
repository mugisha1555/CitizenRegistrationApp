<%@ page import="java.sql.*" %>
<html>
<head>
</head>
<body>
  <h1>Edit Citizen Form</h1>
  <% 
String id = request.getParameter("id");
java.sql.DriverManager.registerDriver(new org.postgresql.Driver());
 Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ububiko" , "postgres", "mugisha123");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from citizen where ni ='"+id+"'");
if(rs.next()){
   String ni = rs.getString(1);
   String na = rs.getString(2);
   String we = rs.getString(3);
   String he = rs.getString(4);
   String dt = rs.getString(5);
  %>
  <form action="editCitizen.jsp" method="POST">
    <input type="text" name="ni"  value="<%=ni%>" placeholder="national_id"><br><br>
          <input type="text" name="na"  value="<%=na%>" placeholder="names"><br><br>
          <input type="text" name="we"  value="<%=we%>" placeholder="weight/kg"><br><br>
          <input type="text" name="he"  value="<%=he%>" placeholder="height/m"><br><br>
          <label >date_of_birth</label>
          <input type="date" name="dt"  value="<%=dt%>"placeholder="height"><br><br>
          <input type="submit" value="Update">
  </form>
<%} %>
</body>
</html>