<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>JSTL sql:query Tag</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"  url="jdbc:mysql://localhost:3306/hiber"
     user="root"  password=""/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from user;
</sql:query>
<table border="1" width="100%">
<tr><th>User ID</th><th>Name</th><th>Password</th><th>Email</th><th>Phone Number</th></tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.id}"/></td>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.password}"/></td>
<td><c:out value="${row.email}"/></td>
<td><c:out value="${row.phonenum}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>
