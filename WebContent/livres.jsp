<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<center><h1>A la recherche du livre perdu</h1></center>

	<form action="livresRequete.jsp">

		<table>
			<tr>
				<td><input type="text" name="search"></td>
				<td><input type="submit" value="Search"></td>
			</tr>
		</table>

	</form>


<jsp:include page="footer.html"></jsp:include>
</body>
</html>