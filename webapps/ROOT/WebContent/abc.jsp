<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String[ ]cities = {"Dublin", "New York", "Oz"};

pageContext.setAttribute("cities", cities);
%>
<html>
<head></head>
<body>
<c:set var="stuff" value="<%= new java.util.Date()%>"/>

Time is: ${stuff}
<br/>

<c:forEach var="city" items="${cities}">
    ${city}
    <br/>
</c:forEach>
</body></html>