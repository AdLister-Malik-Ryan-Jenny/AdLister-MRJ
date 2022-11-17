<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>

    <style>
        h1 {
            display: flex;
            justify-content: space-around;
            font-size: 100px;
            margin: 15px auto;
            color: black;
        }
    </style>

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

        <h1>WELCOME TO ADLISTER</h1>

    <jsp:include page="/WEB-INF/partials/script.jsp"/>

</body>
</html>
