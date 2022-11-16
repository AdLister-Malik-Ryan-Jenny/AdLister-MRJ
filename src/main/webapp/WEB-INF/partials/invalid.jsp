<%--
  Created by IntelliJ IDEA.
  User: phife
  Date: 11/16/22
  Time: 3:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<h1 style="color: red">Invalid credentials try again</h1>
<form action="/profile" method="post">
    <label for="username">Username: </label>--%>
    <input type="text" name="username" id="username" placeholder="${sessionScope.user.username}" value="${sessionScope.user.username}">
    <label for="email">Email: </label>
    <input type="email" name="email" id="email" placeholder="${sessionScope.user.email}" value="${sessionScope.user.email}">
    <label for="currentPassword">Current Password: </label>
    <input type="password" name="password" id="currentPassword" placeholder="Password: ">
    <label for="newPassword">New Password: </label>
    <input type="password" name="newPassword" id="newPassword" placeholder="New Password: ">
    <label for="confirm_password">Confirm Password: </label>
    <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password: ">
    <label for="id" class="id"></label>
    <input type="text" name="id" class="idField" id="id" value="${sessionScope.user.id}">
    <button type="submit" name="update" value="delete">Delete</button>
    <button type="submit" name="update" value="update">Update</button>
    <button type="submit" name="update" value="update_password">Update</button>
</form>
<button id="testBtn" type="button">Teest</button>
</body>
</html>
