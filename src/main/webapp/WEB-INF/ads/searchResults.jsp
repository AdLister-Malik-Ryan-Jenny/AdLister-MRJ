<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Viewing All The Ads"/>
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
  <h1>Here are your search results</h1>
  <table class="table table-striped-rows">
    <thead>
    <th scope="col">Title</th>
    <th scope="col">Description</th>
    <th scope="col">Details</th>
    </thead>
    <c:forEach var="result" items="${searchResults}">
      <tbody>
      <tr>
        <td>${result.title}</td>
        <td>${result.description}</td>
        <td>
          <form action="/details" method="post">
            <input type="hidden" name="ad_id" value="${result.id}">
            <input class="btn" type="submit" value="details">
          </form>
        </td>
      </tr>
      </tbody>
    </c:forEach>
  </table>

</div>
</body>
</html>
