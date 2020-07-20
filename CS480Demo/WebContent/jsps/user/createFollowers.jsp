<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String number=request.getParameter("number");
String opinion=request.getParameter("opinion");


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql//localhost:3306/twitter_covid19_research", "root", "allahuma");
	Statement st=con.createStatement();
	st.executeUpdate("insert into users_followers (id,tweet,location) values('"+id+"', '"+number+"','"+opinion+"')");
	response.sendRedirect("save.html");
}
catch(Exception e)
{
	response.sendRedirect("save.html");
	}
%>html>