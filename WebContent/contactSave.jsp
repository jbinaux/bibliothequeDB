
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
	try {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/bibliotheque_db_2";
		String user = "root";
		String pwd = "N-SkV#InP#$/Tm_p2Ce63ruvF5=G";

		Connection con = DriverManager.getConnection(url, user, pwd);

		PreparedStatement ps = con.prepareStatement("insert into contact values(?,?,?)");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, message);

		int s = ps.executeUpdate();
		if (s > 0) {
%>
<jsp:forward page="contact.jsp"></jsp:forward>
<%
	} else {
			out.print("sorry!please fill correct detail and try again");
		}
	} catch (Exception e) {
		e.printStackTrace();
		out.print("sorry!please fill correct detail and try again");
	}
%>