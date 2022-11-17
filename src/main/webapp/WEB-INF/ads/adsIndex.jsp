<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/loggedInNavbar.jsp"/>

<div class="container">
    <h1>Here Are all the ads!</h1>
    <table>
        <tr class="head">
            <%--            <th>Category</th>--%>
            <th>Product Name</th>
            <th>Price</th>
            <th>Details</th>
        </tr>
        <c:forEach var="ad" items="${ads}">
            <tr>
                <td>${ad.title}</td>
                <td>${ad.description}</td>
                <td>
                    <form action="/details" method="post">
                        <input type="hidden" name="ad_id" value="${ad.id}">
                        <input class="btn" type="submit" value="details">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
