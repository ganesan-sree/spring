<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form:form action="../doRegistration" method="post" modelAttribute="user">
<table>
<tr>
<td>UserName</td><td><form:input path="username"/></td>
</tr>
<tr>
<td>Email</td><td><form:input path="email"/></td>
</tr>
<tr>
<td>Phone</td><td><form:input path="phone"/></td>
</tr>
<tr>
<td>Sex</td><td><form:input path="sex"/></td>
</tr>
</table>

<input type="submit"/>
</form:form>


</body>
</html>