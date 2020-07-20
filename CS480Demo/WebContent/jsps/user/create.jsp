<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String tweet=request.getParameter("tweet");
String location=request.getParameter("location");
out.println("I am here");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql//localhost:3306/twitter_covid19_research", "root", "allahuma");
	Statement st=con.createStatement();
	st.executeUpdate("insert into tweet (id,tweet,location) values('"+id+"', '"+tweet+"','"+location+"')");
	response.sendRedirect("save.html");
}
catch(Exception e)
{
	response.sendRedirect("save.html");
	}
%>