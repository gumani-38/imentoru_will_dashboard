<?php
session_start();

// Check if the user is logged in, if not then redirect them to login page
if (!isset($_SESSION['id'])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Admin Dashboard | Korsat X Parmaga</title>
    <!-- ======= Styles ====== -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
      integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="assets/css/style.css" />
  </head>

  <body>
    <!-- =============== Navigation ================ -->
    <div class="container">
    <?php include("./components/LeftNavBar.php"); ?>
      <!-- ========================= Main ==================== -->
      <div class="main">
      <?php include("./components/TopBar.php"); ?>
        <span
          style="
            font-weight: 500;
            margin: 7px;
            margin-top: 15px;
            color: #00aee0;
            margin-left: 24px;
          "
          >Add New Mentor</span
        >
        <div class="align-center">
          <div class="form-container">
            <div class="content">
              <form action="./php/addMentor.php" method="post">
                <div class="user-details">
                  <div class="input-box">
                    <span class="details">First Name</span>
                    <input
                      type="text"
                      placeholder="Enter your name"
                      name="first_name"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Last Name</span>
                    <input
                      type="text"
                      name="last_name"
                      placeholder="Enter your username"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Email</span>
                    <input
                      type="text"
                      name="email"
                      placeholder="Enter your email"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Phone Number</span>
                    <input
                      type="text"
                      name="phone_number"
                      placeholder="Enter your phone number"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Occupation</span>
                    <input
                      type="text"
                      name="occupation"
                      placeholder="Enter your number"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Town/Vilage</span>
                    <input
                      type="text"
                      name="town_village"
                      placeholder="Enter your number"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">ID Number</span>
                    <input
                      type="text"
                      name="id_number"
                      placeholder="Enter your password"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Whatsapp Number</span>
                    <input
                      type="text"
                      name="whatsaapp_number"
                      placeholder="Enter your password"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details"></span>
                    <select name="province" id="">
                      <option value="">Select your province</option>
                      <option value="Eastern Cape">Eastern Cape</option>
                      <option value="Free State">Free State</option>
                      <option value="Gauteng">Gauteng</option>
                      <option value="KwaZulu-Natal">KwaZulu-Natal</option>
                      <option value="Matola(mozambique)">
                        Matola(mozambique)
                      </option>
                      <option value="Mpumalanga">Mpumalanga</option>
                      <option value="North West">North West</option>
                      <option value="Northern Cape">Northern Cape</option>
                      <option value="Western Cape">Western Cape</option>
                    </select>
                  </div>
                  <div class="input-box">
                    <span class="details"></span>
                    <select name="gender" id="">
                      <option value="">Select your gender</option>
                      <option value="Male">Male</option>
                      <option value="Female">Female</option>
                      <option value="Other">Other</option>
                    </select>
                  </div>
                  <div class="input-box">
                    <span class="details"></span>
                    <select name="country" id="">
                      <option value="">Select your country</option>
                      <option value="South Africa">South Africa</option>
                      <option value="Mozambique">Mozambique</option>
                    </select>
                  </div>
                  <div class="input-box">
                    <span class="details"></span>
                    <textarea
                      name="address"
                      id=""
                      cols="39"
                      rows="7"
                      style="height: 100px"
                      placeholder="Enter your physical/ postal address"
                    ></textarea>
                  </div>
                </div>

                <div class="button">
                  <input type="submit" value="Add Mentor" />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- =========== Scripts =========  -->
    <script src="assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
  </body>
</html>
