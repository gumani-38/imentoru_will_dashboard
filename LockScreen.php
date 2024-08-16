<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
    #hidePassword {
        position: absolute;
        top: 12px;
        right: 5px;
        cursor: pointer;
    }
    </style>
    <title>imentoru</title>
</head>

<body>
    <div class="modal-container">
        <div class="lock-screen-box">
            <div class="header">
                <img src="./assets/imgs/user.png" alt="">
                <span><?php echo $_SESSION["Fullname"];  ?></span>
            </div>

            <div class="content">
                <form action="./php/unLockScreen.php" method="post">
                    <div class="input-field" style="position: relative;">
                        <input type="password" class="password" name="password" style="padding-left: 7px;"
                            placeholder="enter your password" required />
                        <i class="fa-regular fa-eye-slash" id="hidePassword"></i>
                    </div>
                    <button>Unlock</button>
                </form>
            </div>

        </div>

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