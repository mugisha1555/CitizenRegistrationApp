<%@ page import="java.sql.*"%>

<% 
String ni = request.getParameter("ni");
String na = request.getParameter("na");
String we = request.getParameter("we");
String he = request.getParameter("he");
String dt = request.getParameter("dt");

DriverManager.registerDriver(new org.postgresql.Driver());
Connection  con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ububiko" , "postgres", "mugisha123");
Statement stmt = con.createStatement();
String sql = "insert into citizen values('"+ni+"', '"+na+"', '"+we+"','"+he+"', '"+dt+"' )";
stmt.execute(sql);
con.close();
%>
<jsp:forward page="listCitizen.jsp" />