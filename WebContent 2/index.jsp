<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unidade 2</title>
</head>
<body>
	<sql:setDataSource 
		var="snapshot" 
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/db_sistema?useSSl=false&serverTimezone=UTC"
		user="root"
		password="root"/>
		
	<sql:query dataSource="${snapshot}" var="result">
		Select * from agenda
	</sql:query>
	
	<table border="1" width="100%">
		<tr>
			<th>ID_EMPREGADO</th>
			<th>FUNCIONARIO</th>
			<th>E-MAIL</th>
		</tr>
		<c:forEach var="registro" items="${result.rows}"> 
			<tr>
				<td><c:out value="${registro.ID_EMPREGADO}"/></td>
				<td><c:out value="${registro.FUNCIONARIO}"/></td>
				<td><c:out value="${registro.E-MAIL}"/></td>
			</tr>
		</c:forEach>	
	</table>
	
	
</body>
</html>
