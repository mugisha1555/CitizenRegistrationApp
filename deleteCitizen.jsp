<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
DriverManager.registerDriver(new org.postgresql.Driver());
Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ububiko" , "postgres", "mugisha123");
PreparedStatement stmt = con.prepareStatement("delete from citizen where ni=? ");
stmt.setString(1, id);
stmt.executeUpdate();
con.close();
%>
<jsp:forward page="listCitizen.jsp" />
