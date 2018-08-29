 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
try {
        String name= request.getParameter("name");
        String pseudo = request.getParameter("pseudo");
        String email= request.getParameter("email");
        String password= request.getParameter("mot de passe");
        
        Class.forName("com.mysql.jdbc.Driver");
        
        String url = "jdbc:mysql://localhost:3306/bibliotheque_db_2";
        String user = "root";
        String pwd= "N-SkV#InP#$/Tm_p2Ce63ruvF5=G";
        
        Connection con=DriverManager.getConnection(url, user, pwd);
        
        PreparedStatement ps=con.prepareStatement("insert into membre(`nom`,`pseudo`,`email`,`mot_de_passe`) values(?,?,?,?)");
        ps.setString(1,name);
        ps.setString(2,pseudo);
        ps.setString(3,email);
        ps.setString(4,password);
        
        int s= ps.executeUpdate();
        if(s>0){
        %>
        <jsp:forward page="inscription.jsp"></jsp:forward>
        <% 
        }
        else{
        System.out.print("sorry!please fill correct detail and try again" );
        }
}
catch(Exception e){e.printStackTrace();
out.print("sorry!please fill correct detail and try again" );
}

%>