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
            color: red;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="modals">
    <div class="updateUserModal modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Update Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <form action="profile" method="post">
                    <div class="modal-body">
                        <div class="formControl">
                            <label for="username">Username: </label>
                            <input type="text" name="username" id="username"
                                   placeholder="${sessionScope.user.username}"
                                   value="${sessionScope.user.username}">
                        </div>
                        <div class="formControl">
                            <label for="email">Email: </label>
                            <input type="email" name="email" id="email"
                                   placeholder="${sessionScope.user.email}"
                                   value="${sessionScope.user.email}">
                        </div>
                        <div class="formControl">
                            <label for="currentPassword">Current Password: </label>
                            <input type="password" name="password" id="currentPassword"
                                   placeholder="Password: ">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                        </button>
                        <button type="submit" class="btn btn-primary" name="update" value="update">Save changes
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="changePasswordModal modal fade" id="updateModal2" tabindex="-1" aria-labelledby="updateModalLabel2"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel2">Update Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <form action="profile" method="post">
                    <div class="modal-body">
                        <div class="formControl">
                            <label for="currentUpdatePassword">Current Password: </label>
                            <input type="password" name="password" id="currentUpdatePassword"
                                   placeholder="Password: ">
                        </div>
                        <div class="formControl">
                            <label for="new_Password">New Password: </label>
                            <input type="password" name="newPassword" id="new_Password"
                                   placeholder="New Password: ">
                        </div>
                        <div class="formControl">
                            <label for="confirm_password">Confirm Password: </label>
                            <input type="password" name="confirm_password" id="confirm_password"
                                   placeholder="Confirm Password: ">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                        </button>
                        <button type="submit" class="btn btn-primary" name="update" value="update_password">Save
                            changes
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="deleteUserModal modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Delete Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <form action="profile" method="post">
                    <div class="modal-body">
                        <h2 id="warningMessage">WARNING! This cannot be undone!</h2>
                        <div class="directionMessage">
                            <small>Input Your Password:</small>
                            <label for="currentDeletePassword" class="id"></label>
                            <input type="password" name="password" class="confirmField"
                                   id="currentDeletePassword">
                        </div>
                        <div class="directionMessage">
                            <small>Confirm Password</small>
                            <label for="confirm" class="id"></label>
                            <input type="password" name="confirm_password" class="confirmField" id="confirm">
                        </div>
                        <div class="directionMessage">
                            <input type="hidden" name="username" class="confirmField" id="usernameDelete"
                                   value="${sessionScope.user.username}">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                        </button>
                        <button type="submit" class="btn btn-danger" name="update" value="delete">DELETE!</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <div class="userAds container">
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
        </table>
    </div>
    <div class="modalBtns container">
        <button type="button" class="updateUserBtn btn btn-primary" data-bs-toggle="modal"
                data-bs-target="#updateModal">
            Update Profile
        </button>
        <button type="button" class="updatePasswordBtn btn btn-primary" data-bs-toggle="modal"
                data-bs-target="#updateModal2">
            Change Password
        </button>
        <button type="button" class="deleteModalBtn btn btn-primary" data-bs-toggle="modal"
                data-bs-target="#deleteModal">
            Delete Profile
        </button>
    </div>
</div>


<jsp:include page="partials/script.jsp"/>
</body>
</html>
