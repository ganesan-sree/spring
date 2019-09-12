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



 <script type="text/javascript" src="../js/jquery-1.9.1.js"></script>

<script type="text/javascript" src="../js/registration.js"></script>

    <script type="text/javascript">
        var GB_ROOT_DIR = "./greybox/";
    </script>

    <script type="text/javascript" src="greybox/AJS.js"></script>
    <script type="text/javascript" src="greybox/AJS_fx.js"></script>    
    <script type="text/javascript" src="greybox/gb_scripts.js"></script>
    <link href="greybox/gb_styles.css" rel="stylesheet" type="text/css" media="all" />


 
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
  <body onload="InitializeEvents()">
<table class="gridtable" width="100%" id="myTable">
<thead><tr>  <th>UserName</th>   <th>Email</th>  <th>gender</th> <th>Phone</th>   <th>Password</th>  <th>Country</th>  <th>UserRole</th>   </tr></thead>

<c:forEach items="${userlist}" var="user">
<tbody>
<tr>
<td><c:out value="${user.username}"></c:out></td>
<td><c:out value="${user.email}"></c:out></td>
<td><c:out value="${user.sex}"></c:out></td>
<td><c:out value="${user.phone}"></c:out></td>
<td><c:out value="${user.password}"></c:out></td>
<td><c:out value="${user.country}"></c:out></td>
<td><c:out value="${user.userrole}"></c:out></td>
 </tr>
 </tbody>
</c:forEach>

</table>


<a href="edituser/3" onclick="return GB_showCenter('Google', this.href)">Edit User</a>




</body>
</html>


