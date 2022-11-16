<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%! int counter = 0; %>
    <% counter += 1; %>

    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>

    <style>
        .idField{
            visibility: hidden;
        }
        .formControl {
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/loggedinNavbar.jsp" />

<%--    TODO:--%>
<%--    Add modal as a partial and use js to click to it--%>
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <h1><%= request.getParameter("message")%></h1>

    </div>
<%--    <!-- Button trigger modal -->--%>
<%--    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateProfile">--%>
<%--        Update Profile--%>
<%--    </button>--%>

<%--    <!-- Modal -->--%>
<%--    <form action="/profile" method="post">--%>
<%--        <div class="modal fade" id="updateProfile" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--            <div class="modal-dialog">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <h1 class="modal-title fs-5" id="exampleModalLabel">Update Profile</h1>--%>
<%--                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>

<%--                        <div class="formControl">--%>
<%--                            <label for="username">Username: </label>--%>
<%--                            <input type="text" name="username" id="username" placeholder="${sessionScope.user.username}" value="${sessionScope.user.username}">--%>
<%--                            <label for="email">Email: </label>--%>
<%--                            <input type="email" name="email" id="email" placeholder="${sessionScope.user.email}" value="${sessionScope.user.email}">--%>
<%--                            <label for="currentPassword">Current Password: </label>--%>
<%--                            <input type="password" name="currentPassword" id="currentPassword" placeholder="Password: ">--%>
<%--                            <label for="newPassword">New Password: </label>--%>
<%--                            <input type="password" name="newPassword" id="newPassword" placeholder="New Password: ">--%>
<%--                            <label for="confirm_password">Confirm Password: </label>--%>
<%--                            <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password: ">--%>
<%--                            <label for="id" class="id"></label>--%>
<%--                            <input type="text" name="id" class="idField" id="id" value="${sessionScope.user.id}">--%>
<%--                        </div>--%>

<%--                    </div>--%>

<%--                    <div class="modal-footer">--%>
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>--%>
<%--                        <button type="submit" class="btn btn-primary">Update</button>--%>
<%--                        <button type="submit" class="btn btn-primary">Delete</button>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--    <h1>Delete</h1>--%>
<%--    <form action="/profile" method="post">--%>
<%--        <label for="username">Username: </label>&ndash;%&gt;--%>
<%--        <input type="text" name="username" id="username" placeholder="${sessionScope.user.username}" value="${sessionScope.user.username}">--%>
<%--        <label for="email">Email: </label>--%>
<%--        <input type="email" name="email" id="email" placeholder="${sessionScope.user.email}" value="${sessionScope.user.email}">--%>
<%--        <label for="currentPassword">Current Password: </label>--%>
<%--        <input type="password" name="password" id="currentPassword" placeholder="Password: ">--%>
<%--        <label for="newPassword">New Password: </label>--%>
<%--        <input type="password" name="newPassword" id="newPassword" placeholder="New Password: ">--%>
<%--        <label for="confirm_password">Confirm Password: </label>--%>
<%--        <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password: ">--%>
<%--        <label for="id" class="id"></label>--%>
<%--        <input type="text" name="id" class="idField" id="id" value="${sessionScope.user.id}">--%>
<%--        <button type="submit" name="delete" >Delete</button>--%>
<%--&lt;%&ndash;        <button type="submit" name="update" value="true">Update</button>&ndash;%&gt;--%>
<%--    </form>--%>

    <h1>Update</h1>
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

    <jsp:include page="partials/script.jsp" />
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script>
        $('#testBtn').click( function (){
            console.log("you clicked me bro!")
        })


</script>
</body>
</html>
