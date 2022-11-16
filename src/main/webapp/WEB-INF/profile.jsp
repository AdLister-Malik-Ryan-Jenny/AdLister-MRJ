<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
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
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
</div>
<div class="userAds">
    <h2>Here are all your ads!</h2>
    <table>
        <tr class="head">
            <%--            <th>Category</th>--%>
            <th>Product Name</th>
            <th>Price</th>
            <th>Details</th>
        </tr>
        <c:forEach var="userAd" items="${userAds}">
        <tr>
            <td>${userAd.title}</td>
            <td>${userAd.description}</td>
            <td style="visibility: hidden">${userAd.id}</td>
            <td>
                <form action="/details" method="post">
                    <input type="hidden" name="ad_id" value="${userAd.id}">
                    <input class="btn" type="submit" value="details">
                </form>
            </td>
            <td>
                <a role="button" class="table-button"
                   href="/details">Update</a>
            </td>
            <td>
                <a role="button" class="table-button"
                   href="/details">Delete</a>
            </td>
        </tr>
        </c:forEach>
</div>


<jsp:include page="partials/script.jsp"/>
</body>
</html>
