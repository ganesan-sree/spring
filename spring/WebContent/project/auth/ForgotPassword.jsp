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
<title>Forgot Password</title>
</head>
<body>
<c:forEach items="${exception.stackTrace}" var="element">
    <c:out value="${element}"/>
</c:forEach>

<h1><fmt:message key="person.form.title"/></h1>

<div id="messages">
    <c:if test="${not empty statusMessageKey}">
       <p><fmt:message key="${statusMessageKey}"/></p>
    </c:if>
</div>

<c:if test="${not empty error}">
<h4>using  c:if test = not empty error</h4>
</c:if>





<div align="center" >
<form:form commandName="forgot" action="doforgotpassword" method="post">
Password:
<br/>
<form:password path="password" />
<br/>
Re-Password:
<br/>
<form:password path="password" />
<br/>
 <input type="submit" id="save" name="_eventId_save" value="<fmt:message key="button.reset"/>"/>&#160;
</form:form>


</div>


<div align="center">
<h4>Form using model attribute </h4>
<form:form modelAttribute = "forgot">
    <form:input path = "password" />
</form:form>
</div>






<div align="center">
<h4> using spring:hasBindErrors </h4>
    <spring:hasBindErrors name="forgot">
        <h2>Errors</h2>
        <div class="formerror">
            <ul>
           <c:out value="${status.expression}"></c:out>
           <c:out value="${status.value}"></c:out>
           <c:out value="${status.errorMessage}"></c:out>
           
            <c:forEach var="error" items="${error.allErrors}">
                <li>${error.defaultMessage}</li>
            </c:forEach>
            </ul>
        </div>
    </spring:hasBindErrors>
</div>


<div align="center">
<h4> using spring:bind </h4>
<spring:bind path="forgot" >
<h4> start: </h4>
${status.displayValue}
${status.expression} 
${status.value}
${status.errorMessage}
</spring:bind>

</div>
</body>
</html>