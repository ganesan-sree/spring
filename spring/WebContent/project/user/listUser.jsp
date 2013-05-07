<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="2px" class="gridtable">
<thead><tr>  <th>UserName</th>   <th>Email</th>  <th>gender</th> <th>Phone</th>   <th>Password</th>  <th>Country</th>  <th>UserRole</th>   </tr></thead>
<c:forEach items="${userlist}" var="user">
<tr>
<td><c:out value="${user.username}"></c:out></td>
<td><c:out value="${user.email}"></c:out></td>
<td><c:out value="${user.sex}"></c:out></td>
<td><c:out value="${user.phone}"></c:out></td>
<td><c:out value="${user.password}"></c:out></td>
<td><c:out value="${user.country}"></c:out></td>
<td><c:out value="${user.userrole}"></c:out></td>
 </tr>
</c:forEach>
</table>
</body>
</html>


