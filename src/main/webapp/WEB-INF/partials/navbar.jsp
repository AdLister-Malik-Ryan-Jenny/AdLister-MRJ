


<style>
    .navButton {
        background-color: lightgray;
        border: none;
        color: black;
    }
</style>




<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
                aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="profile">Home</a>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ads">View Ads</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ads/create">Create Ad</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="login">Login</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="register">Register</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="logout">Logout</a>
                </li>

                <li class="nav-item">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary navButton" data-bs-toggle="modal" data-bs-target="#updateModal">
                        Update Profile
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel"
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
                                            <label for="currentUpdatePassword">Current Password: </label>
                                            <input type="password" name="currentPassword" id="currentUpdatePassword"
                                                   placeholder="Password: ">
                                        </div>
                                        <div class="formControl">
                                            <label for="newPassword">New Password: </label>
                                            <input type="password" name="newPassword" id="newPassword"
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
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary navButton" data-bs-toggle="modal" data-bs-target="#deleteModal">
                        Delete Profile
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel"
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
                                            <small>Type "confirm":</small>
                                            <label for="confirm" class="id"></label>
                                            <input type="text" name="confirm" class="confirmField" id="confirm">
                                        </div>
                                        <div class="directionMessage">
                                            <small>Input Your Password:</small>
                                            <label for="currentDeletePassword" class="id"></label>
                                            <input type="text" name="currentPassword" class="confirmField"
                                                   id="currentDeletePassword">
                                        </div>
                                        <div class="directionMessage">
                                            <input type="text" name="username" class="confirmField" id="usernameDelete" value="${sessionScope.user.username}">
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                        </button>
                                        <button type="submit" class="btn btn-danger">DELETE!</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>

            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

        </div>
    </div>
</nav>
