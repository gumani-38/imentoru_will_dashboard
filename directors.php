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
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="assets/css/style.css" />
</head>

<body>
  <!-- =============== Navigation ================ -->
  <div class="container">
    < <?php include("./components/LeftNavBar.php"); ?>
      <!--=========================Main====================-->
      <div class="main">
        <?php include("./components/TopBar.php"); ?>
        <div class="btn-form-wrapper">
          <a href="addDirector.html" class="btn-form">Add Director</a>
        </div>
        <div class="search-wrapper">
          <input type="text" placeholder="search by name or email...">
        </div>


        <!-- ======================= Cards ================== -->

        <!-- ================ Order Details List ================= -->
        <div class="details">
          <div class="recentOrders">
            <div class="cardHeader">
              <h2>Directors</h2>
              <div class="pagination">
                <a href="#" class="pagination-btns"><ion-icon name="chevron-back-outline"></ion-icon></a>
                <span>1/5</span>
                <a href="#" class="pagination-btns"><ion-icon name="chevron-forward-outline"></ion-icon></a>
              </div>
            </div>

            <table>
              <thead>
                <tr>
                  <td>Full Name</td>
                  <td>Gender</td>
                  <td>Role Code</td>
                  <td>Phone</td>
                  <td>Province</td>
                  <td>Email</td>
                  <td>Active Since</td>
                  <td>Action</td>
                </tr>
              </thead>

              <tbody id="director-data"></tbody>
            </table>
          </div>
        </div>
      </div>
  </div>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      fetch("./php/fetchDirectors.php")
        .then((response) => response.text())
        .then((data) => {
          document.getElementById("director-data").innerHTML = data;
        })
        .catch((error) => console.error("Error fetching events:", error));
    });
  </script>

  <!-- =========== Scripts =========  -->
  <script src="assets/js/main.js"></script>

  <!-- ====== ionicons ======= -->
  <script
    type="module"
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script
    nomodule
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>