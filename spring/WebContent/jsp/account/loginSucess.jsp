<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
</head>
<body>
Login Details
<hr>
User Name   : ${user.name} <br/>
Password    : ${user.password} <br/>

<c:out value="${user.name}"></c:out>
<c:out value="${user.password}"></c:out>
</body>
</html>