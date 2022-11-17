
<style>
    .navButton {
        background-color: transparent;
        border: none;
        color: black;
        font-size: 20px;
        align-content: center;
        align-items: center;
    }
    .navButton:hover{
        background-color: transparent;
        color: black;
        border: none;
        font-size: 20px;
        align-content: center;
        align-items: center;
    }
    #navSearch {
        align-items: center;
        align-content: center;
        border: 1px solid black;
        border-radius: 12%;
        color: black;
        background-color: transparent;
    }
    #navForm {
        font-size: 20px;
        align-items: center;
        align-content: center;
        color: black;
        background-color: transparent;
        margin-top: 15px;
        width: 75%;
    }
    #navListOne {
        font-size: 20px;
        align-content: center;
        align-items: center;
    }
    #navListTwo {
        font-size: 20px;
        align-content: center;
        align-items: center;
    }
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light">

    <div class="container-fluid">

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
                aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="navListOne">

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="profile">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ads">View Ads</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="create">Create Ad</a>
                </li>

            </ul>

        </div>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo04">

            <form class="d-flex" id="navForm">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" id="navSearch" type="submit">Search</button>
            </form>

        </div>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo05">

        <ul class="navbar-nav me-auto mb-2 mb-lg-0 position-absolute end-0" id="navListTwo">

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
                                            <label for="currentPassword">Current Password: </label>
                                            <input type="password" name="password" id="currentPassword"
                                                   placeholder="Password: ">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                        </button>
                                        <button type="submit" class="btn btn-primary" name="update" value="update">Save changes</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary navButton" data-bs-toggle="modal" data-bs-target="#updateModal2">
                        Change Password
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="updateModal2" tabindex="-1" aria-labelledby="updateModalLabel2"
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
                                        <button type="submit" class="btn btn-primary" name="update" value="update_password">Save changes</button>
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
                                            <input type="hidden" name="username" class="confirmField" id="usernameDelete" value="${sessionScope.user.username}">
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                        </button>
                                        <button type="submit" class="btn btn-danger" name="update"  value="delete">DELETE!</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="logout">Logout</a>
                </li>

            </ul>

        </div>
    </div>
</nav>
