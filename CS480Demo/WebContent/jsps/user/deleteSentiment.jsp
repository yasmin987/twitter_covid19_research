<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql//localhost:3306/twitter_covid19_research", "root", "allahuma");
	Statement st=con.createStatement();
	st.executeUpdate("delete from sentiment where id='"+id+"'");
	response.sendRedirect("deleteTweet.html");
}
catch(Exception e)
{
	response.sendRedirect("deleteTweet.html");
	}
%>