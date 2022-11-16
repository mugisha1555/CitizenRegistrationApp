<%@ page import="java.sql.*" %>
<%

String ni = request.getParameter("ni");
String na = request.getParameter("na");
String we = request.getParameter("we");
String he = request.getParameter("he");
String dt = request.getParameter("dt");
DriverManager.registerDriver(new org.postgresql.Driver());
Connection cn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ububiko" , "postgres", "mugisha123");

Statement st = cn.createStatement();
String qry = "update citizen set na='"+na+"', we='"+we+"', he='"+he+"', dt='"+dt+"' where ni='"+ni+"'";
st.execute(qry);
cn.close();
%>
<jsp:forward page="listCitizen.jsp" />


