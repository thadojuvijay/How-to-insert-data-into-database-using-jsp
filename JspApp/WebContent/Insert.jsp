<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>

<%


String name=request.getParameter("username");
String id=request.getParameter("email");
String password=request.getParameter("pass");
try{
	

	 

	Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
	
	Statement statement=connection.createStatement();	
	statement.executeUpdate("insert into register values('"+name+"','"+id+"','"+password+"')");
	
	out.println(name);
	out.println(id);
	out.println(password);
	
	connection.close();
}
catch(SQLException e)
{
	
	out.println(e);
	
}
catch(ClassNotFoundException cs)
{
	
	out.println(cs);
}

%>
</body>
</html>