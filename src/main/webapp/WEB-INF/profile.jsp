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

    <c:choose>
        <c:when test="${sessionScope.user != null}">
            <jsp:include page="/WEB-INF/partials/loggedInNavbar.jsp"/>
        </c:when>
        <c:otherwise>
            <jsp:include page="/WEB-INF/partials/loggedOutNavbar.jsp"/>
        </c:otherwise>
    </c:choose>

    <div class="container d-flex-row">
        <div class="h1 row text-center">Welcome, ${sessionScope.user.username}!</div>
        <div class="row d-flex">
            <div class="userAds container col-8">
                <h2>Here are all your ads!</h2>
                <table class="table table-striped-rows">
                    <thead>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">Details</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                    </thead>
                    <c:forEach var="userAd" items="${userAds}">
                        <tbody>
                        <tr>
                            <td>${userAd.title}</td>
                            <td >${userAd.description}</td>
                            <td>
                                <form action="/details" method="post">
                                    <input type="hidden" name="ad_id" value="${userAd.id}">
                                    <input class="btn" type="submit" value="details">
                                </form>
                            </td>
                            <td>
                                <form action="updateAd" method="get">
                                    <input class="btn" type="submit" value="UPDATE">
                                    <input type="hidden" name="ad_id" value="${userAd.id}">
                                </form>
                            </td>
                            <td>
                                <form action="deleteAd" method="get">
                                    <input class="btn" type="submit" value="DELETE">
                                    <input type="hidden" name="ad_id" value="${userAd.id}">
                                </form>
                            </td>
                        </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </div>

    <jsp:include page="partials/script.jsp"/>

</body>
</html>
