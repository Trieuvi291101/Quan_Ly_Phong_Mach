
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="50">
    <div class="container" style="margin-top: 50px; margin-bottom: 100px">
        <ul>
        <c:forEach var="i" items="${customeSches}">
            <li>${i.id} - ${i.schedule}</li>
        </c:forEach>    
            <c:forEach var="i" items="${customeSches}">
            <li>${i.id} - ${i.schedule}</li>
        </c:forEach>
            <c:forEach var="i" items="${customeSches}">
            <li>${i.id} - ${i.schedule}</li>
        </c:forEach>
            <c:forEach var="i" items="${customeSches}">
            <li>${i.id} - ${i.schedule}</li>
        </c:forEach>
    </ul>
    </div>
</body>

    
