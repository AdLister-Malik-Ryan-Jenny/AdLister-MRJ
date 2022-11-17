
<style>
    #navListOne {
        font-size: 20px;
        align-content: center;
        align-items: center;
    }
    #navListTwo {
        font-size: 20px;
        align-content: center;
        align-items: center;
        display: flex;
        justify-content: end;
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

                <li>
                    <a class="nav-link active" aria-current="page" href="profile">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ads">View Ads</a>
                </li>

            </ul>

        </div>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo04">

            <ul class="navbar-nav me-auto mb-2 mb-lg-0 position-absolute end-0" id="navListTwo">

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="login">Login</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="register">Register</a>
                </li>

            </ul>

        </div>

    </div>
</nav>