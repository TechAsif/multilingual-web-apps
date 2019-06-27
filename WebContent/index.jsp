<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>

<html>
<head></head>
	<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContex.request.locale }" scope="session">
	</c:set>
	
	<fmt:setLocale value="${ theLocale }"/>
	<fmt:setBundle basename="com.techasif.resources.mylabels"/>
	
	
	<body>
	
		
	
		<a href="index.jsp?theLocale=en_US">English (US)</a>
		<a href="index.jsp?theLocale=bn_BD">Bengali (BD)</a>
		<a href="index.jsp?theLocale=es_ES">Spanish (ES)</a>
		<a href="index.jsp?theLocale=de_DE">German (DE)</a>
		
		<hr/>
	
		<fmt:message key="label.greeting"></fmt:message><br/><br/>
		<fmt:message key="label.firstname"></fmt:message> <i>Asif</i><br/>
		<fmt:message key="label.lastname"></fmt:message> <i>Sarker</i><br/><br/>
		<fmt:message key="label.welcome"></fmt:message> <br/>   
		
		<hr>
		
		Selected Local : ${theLocale }
		
		
		
	</body>
	
</html>
