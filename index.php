<?php

include "includes/config.php";
include "includes/database.php";
include "includes/functions.php";
include "includes/header.php";


if (isset($_SESSION['id'])) {
    header('Location: dashboard.php');
    die();
}

if (isset($_POST['email'])) {

    if ($stm = $connect->prepare('SELECT * FROM users WHERE email = ? AND password = ? AND active = 1')) {
        $hashed = sha1($_POST['password']);
        $stm->bind_param('ss', $_POST['email'], $hashed);
        $stm->execute();

        $result = $stm->get_result();
        $user = $result->fetch_assoc();

        if ($user) {
            $_SESSION['id'] = $user['id'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['username'] = $user['username'];

            set_message("You are now logged in " . $_SESSION['username']);
            header('Location: dashboard.php');
            die();
        }
        $stm->close();
    } else {
        echo 'Could not prepare statement!';
    }
}
?>

<div class="container mt-5" id="login-container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <h2 class="display-6"><strong>Login</strong></h2>
            <hr class="pb-3">
            <form method="post">
                <!-- Email input -->
                <div class="form-outline login-form-outline mb-4">
                    <input type="email" id="email" name="email" class="form-control login-form-control" />
                    <label class="form-label login-form-label " for="email">Email address</label>
                </div>

                <!-- Password input -->
                <div class="form-outline login-form-outline mb-4">
                    <input type="password" id="password" name="password" class="form-control login-form-control" />
                    <label class="form-label login-form-label " for="password">Password</label>
                </div>

                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block login-btn">Sign in</button>
            </form>
        </div>
    </div>
</div>

<?php
include "includes/footer.php";
?>