
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
    #navList {
        font-size: 20px;
        align-content: center;
        align-items: center;
    }
    #navHome {
        font-size: 20px;
        align-content: center;
        align-items: center;
    }
    #navSearch {
        font-size: 20px;
        align-items: center;
        align-content: center;
        border: 1px solid black;
        color: black;
        background-color: transparent;
    }
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
                aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" id="navHome" href="profile">Home</a>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="navList">

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ads">View Ads</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="create">Create Ad</a>
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
            </ul>

            <form action="search" method="post" class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                <button class="btn btn-outline-success" id="navSearch" type="submit">Search</button>
            </form>

        </div>
    </div>
</nav>
