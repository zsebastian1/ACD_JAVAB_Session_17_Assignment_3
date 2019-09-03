<%@page import="java.sql.ResultSet"%>
<%@page import="db.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		Connection con = DBConnection.getDBInstance();
		DBUtility.useDB(con, "springjdbc");
		String query, selectQuery;
		selectQuery = "SELECT * FROM employees;";
		ResultSet rs;
		rs = DBUtility.executeQuery(con, selectQuery);
		out.print(DBUtility.printEntireRSAsTable(rs));
	%>

</body>
</html>>