<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
	String url = "jdbc:mysql://localhost/bibliotheque_db_2";
	String user = "root";
	String pwd = "N-SkV#InP#$/Tm_p2Ce63ruvF5=G";

	Connection cn = null;
	Statement st = null;

	//connexion avec le driver 
	try {
		//chargement du Driver 
		Class.forName("com.mysql.jdbc.Driver");
		// recuperation de la connexion
		cn = DriverManager.getConnection(url, user, pwd);
		//creation d un statement 
		st = cn.createStatement();
		String search = request.getParameter("search");
		String sql = "SELECT * FROM bibliotheque_db_2.livres WHERE titre LIKE '%" + search + "%' OR auteur LIKE '%" + search + "%'";
		//execution requete 
		ResultSet result = st.executeQuery(sql);
		String titre;
		String auteur;
		while (result.next()) {
			//recuperer le "Nom"
			titre = result.getString("titre");
			//recuperer le "Prenom"
			auteur = result.getString("auteur");

			out.print(titre + " de " + auteur + "<br />");
		}
		%>
		<jsp:include page="footer.html"></jsp:include>
		<%
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} finally {
		try {
			cn.close();
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
%>