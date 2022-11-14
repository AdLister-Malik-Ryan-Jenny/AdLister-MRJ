<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateProfile">
        Update Profile
    </button>

    <!-- Modal -->
    <div class="modal fade" id="updateProfile" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Update Profile</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <div class="formControl">
                        <div>
                            <label for="username">Username: </label>
                            <input type="text" name="usernameField" id="username" placeholder="${sessionScope.user.username}">
                            <label for="email">Email: </label>
                            <input type="email" name="emailField" id="email" placeholder="${sessionScope.user.email}">
                            <label for="password">Password: </label>
                            <input type="password" name="passwordField" id="password" placeholder="Password: ">
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Update</button>
                    <button type="button" class="btn btn-primary">Delete</button>
                </div>

            </div>
        </div>
    </div>

    <jsp:include page="partials/script.jsp" />
</body>
</html>
