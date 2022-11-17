<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Delete Ad" />
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

<div class="h1">This action cannot be undone!</div>
<form action="deleteAd" method="post">
  <div class="title">${sessionScope.adToDelete.title}</div>
  <div class="description">${sessionScope.adToDelete.description}</div>
  <input type="hidden" name="ad_id" value="${sessionScope.adToUpdate.id}">
  <button type="submit" class="btn btn-danger">YES, DELETE THIS AD</button>
  <a href="profile" type="button" class="btn btn-info">Just kidding, take me home</a>
</form>
<jsp:include page="/WEB-INF/partials/script.jsp"/>
</body>
</html>
