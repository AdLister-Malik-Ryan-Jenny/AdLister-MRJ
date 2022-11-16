<%--
  Created by IntelliJ IDEA.
  User: jenniferaustin
  Date: 11/15/22
  Time: 2:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<h1>Here are the details of your ad</h1>

<h1 class="title">${detailedAd.title}</h1>
<h4 class="description">${detailedAd.description}</h4>
</body>
</html>
