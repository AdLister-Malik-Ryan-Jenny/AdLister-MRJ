<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Details"/>
    </jsp:include>
</head>
<body>

    <c:choose>
        <c:when test="${sessionScope.user != null}">
            <jsp:include page="/WEB-INF/partials/loggedInNavbar.jsp"/>
        </c:when>
        <c:otherwise>
            <jsp:include page="/WEB-INF/partials/loggedOutNavbar.jsp"/>
        </c:otherwise>
    </c:choose>

    <h1>Here are the details of your ad</h1>

    <h1 class="title">${detailedAd.title}</h1>
    <h4 class="description">${detailedAd.description}</h4>

    <jsp:include page="/WEB-INF/partials/script.jsp"/>

</body>
</html>
