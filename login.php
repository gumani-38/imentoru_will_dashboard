<?php
session_start();

// Check if the user is logged in, if not then redirect them to login page
if (isset($_SESSION['id'])) {
  header("Location: index.php");
  exit();
} ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
    @import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap");

    /* =============== Globals ============== */
    * {
        font-family: "Ubuntu", sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        text-decoration: none;
    }

    body {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        padding: 13px;
    }

    .form-container {
        max-width: 500px;
        width: 100%;
        border: 1px solid gainsboro;
        padding: 20px;
        border-radius: 5px;
    }

    .form-container h2,
    .form-container p {
        text-align: center;
        margin-bottom: 8px;
    }

    .form-container p {
        font-size: 12px;
        color: rgb(159, 157, 157);
    }

    .form-container form {
        width: 100%;
    }

    .form-container .logo {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 8px;
    }

    .input-field {
        margin: 25px 0;
        width: 100%;
    }

    .input-field input {
        height: 40px;
        outline: none;
        border: 1px solid gray;
        border-radius: 4px;
        width: 100%;
        padding: 2px;
    }

    .form-container button {
        border: 0;
        width: 100%;
        outline: none;
        padding: 10px 12px;
        font-weight: bold;
        font-size: 20px;
        text-align: center;
        color: white;
        background: linear-gradient(to right,
                #00aee0 0%,
                #00fedc 51%,
                #00aee0 100%);
        margin-bottom: 30px;
    }

    #hidePassword {
        position: absolute;
        top: 12px;
        right: 5px;
        cursor: pointer;
    }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div class="form-container">
        <div class="logo">
            <img src="./assets/imgs/imentoru-logo.png" height="60" />
        </div>
        <h2>Login</h2>
        <p>Admin Only</p>
        <form action="./php/login.php" method="post">
            <div class="input-field">
                <input type="text" name="username" style="padding-left: 7px;" placeholder="enter your username"
                    required />
            </div>
            <div class="input-field" style="position: relative;">
                <input type="password" class="password" name="password" style="padding-left: 7px;"
                    placeholder="enter your password" required />
                <i class="fa-regular fa-eye-slash" id="hidePassword"></i>
            </div>
            <button>Log In</button>
        </form>
    </div>
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const passwordInput = document.querySelector('.password');
        const hidePasswordIcon = document.querySelector('#hidePassword');

        hidePasswordIcon.addEventListener('click', function() {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);

            // Toggle the eye / eye-slash icon
            this.classList.toggle('fa-eye');
        });
    });
    </script>
</body>

</html>