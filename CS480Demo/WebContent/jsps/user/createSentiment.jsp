<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String posneg=request.getParameter("posneg");
String highlow=request.getParameter("highlow");


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql//localhost:3306/twitter_covid19_research", "root", "allahuma");
	Statement st=con.createStatement();
	st.executeUpdate("insert into sentiment (id,tweet,location) values('"+id+"', '"+posneg+"','"+highlow+"')");
	response.sendRedirect("save.html");
}
catch(Exception e)
{
	response.sendRedirect("save.html");
	}
%>