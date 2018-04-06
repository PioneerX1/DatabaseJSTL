<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	table, td, tr {
		border: 1px solid gray;
	}
</style>

</head>
<body>

	<!-- JSTL configures data source and actually retrieves db result set -->
	<sql:setDataSource var="ds" dataSource="jdbc/webshop"/>
	<sql:query dataSource="${ds}" sql="select * from users limit 10" var="results" />
	
	<!-- Iterate through the db result set -->
	<table>
		<c:forEach var="user" items="${results.rows}">
			<tr><td>${user.id}</td><td>${user.email}</td><td>${user.password}</td></tr>
		</c:forEach>
	</table>
	

</body>
</html>