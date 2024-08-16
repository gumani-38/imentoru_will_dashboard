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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/style.css" />
</head>

<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
        <?php include("./components/LeftNavBar.php"); ?>
        <!-- ========================= Main ==================== -->
        <div class="main">
            <?php include("./components/TopBar.php"); ?>

            <div class="btn-form-wrapper">
                <a href="addProvince.html" class="btn-form">Add Province</a>
            </div>
            <div class="search-wrapper">
                <input type="text" placeholder="search by name or code...">
            </div>

            <!-- ======================= Cards ================== -->

            <!-- ================ Order Details List ================= -->
            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Provinces</h2>
                    </div>

                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Code</td>
                                <td>Coordinators</td>
                                <td>Country Code</td>
                                <td>Active</td>
                                <td>Action</td>
                            </tr>
                        </thead>

                        <tbody id="province-data"></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        fetch("./php/fetchProvince.php")
            .then((response) => response.text())
            .then((data) => {
                document.getElementById("province-data").innerHTML = data;
            })
            .catch((error) => console.error("Error fetching events:", error));
    });
    </script>
    <!-- =========== Scripts =========  -->
    <script src="assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>