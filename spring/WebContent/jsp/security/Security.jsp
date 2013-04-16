<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<html>
<body>
	<h1>Message : ${message}</h1>	
</body>
</html>

<html>
<body>
	<h3>Message : ${message}</h3>	
	<h3>Username : ${username}</h3>	
	
	<a href="<c:url value="/j_spring_security_logout" />" > Logout</a>
	
	
	         <h1>Welcome! <sec:authentication property="principal.username"/></h1>
</body>
</html>