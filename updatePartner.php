<?php
session_start();

// Check if the user is logged in, if not redirect them to login page
if (!isset($_SESSION['id'])) {
    header("Location: login.php");
    exit();
}

// Include the database connection file
include './php/connection.php';

// Get the partner ID from the query string
if (isset($_GET['id'])) {
    $partnerId = $_GET['id'];

    // Prepare a statement to fetch the partner data based on ID
    $stmt = $conn->prepare("SELECT * FROM partners WHERE id = ?");
    $stmt->bind_param("i", $partnerId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch the partner data
        $partner = $result->fetch_assoc();
    } else {
        echo "No partner found with ID $partnerId";
        exit;
    }
} else {
    echo "No partner ID specified.";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Imentoru Dashboard</title>
    <!-- Styles -->
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

            <div class="align-center">
                <div class="form-container">
                    <div class="title">
                        <span style="font-weight: 500; color: #00aee0;">Update Partner</span>
                    </div>

                    <div class="content">
                        <form action="./php/updatePartner.php" method="post">
                            <div class="user-details">
                                <!-- Hidden input to pass the partner ID -->
                                <input type="hidden" name="id"
                                    value="<?php echo htmlspecialchars($partner['id']); ?>" />

                                <div class="input-box">
                                    <span class="details">Name</span>
                                    <input type="text" name="name"
                                        value="<?php echo htmlspecialchars($partner['name']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">Email</span>
                                    <input type="email" name="email"
                                        value="<?php echo htmlspecialchars($partner['email']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">Created At</span>
                                    <input type="text" name="date_reg"
                                        value="<?php echo htmlspecialchars($partner['date_reg']); ?>" readonly />
                                </div>
                                <div class="input-box">
                                    <span class="details">Phone Number</span>
                                    <input type="text" name="phone"
                                        value="<?php echo htmlspecialchars($partner['phone']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">ID Number</span>
                                    <input type="text" name="id_number"
                                        value="<?php echo htmlspecialchars($partner['id_number']); ?>" required />
                                </div>

                                <div class="input-box">
                                    <span class="details">Province</span>
                                    <select name="province" required>
                                        <option value="">Select your province</option>
                                        <option value="Eastern Cape"
                                            <?php echo ($partner['province'] == 'Eastern Cape') ? 'selected' : ''; ?>>
                                            Eastern Cape</option>
                                        <option value="Free State"
                                            <?php echo ($partner['province'] == 'Free State') ? 'selected' : ''; ?>>Free
                                            State</option>
                                        <option value="Gauteng"
                                            <?php echo ($partner['province'] == 'Gauteng') ? 'selected' : ''; ?>>Gauteng
                                        </option>
                                        <option value="KwaZulu-Natal"
                                            <?php echo ($partner['province'] == 'KwaZulu-Natal') ? 'selected' : ''; ?>>
                                            KwaZulu-Natal</option>
                                        <option value="Matola (Mozambique)"
                                            <?php echo ($partner['province'] == 'Matola (Mozambique)') ? 'selected' : ''; ?>>
                                            Matola (Mozambique)</option>
                                        <option value="Mpumalanga"
                                            <?php echo ($partner['province'] == 'Mpumalanga') ? 'selected' : ''; ?>>
                                            Mpumalanga</option>
                                        <option value="North West"
                                            <?php echo ($partner['province'] == 'North West') ? 'selected' : ''; ?>>
                                            North West</option>
                                        <option value="Northern Cape"
                                            <?php echo ($partner['province'] == 'Northern Cape') ? 'selected' : ''; ?>>
                                            Northern Cape</option>
                                        <option value="Western Cape"
                                            <?php echo ($partner['province'] == 'Western Cape') ? 'selected' : ''; ?>>
                                            Western Cape</option>
                                    </select>

                                </div>

                                <div class="input-box">
                                    <span class="details">Partnership</span>
                                    <select name="partnership_type" required>
                                        <option value="">Select partnership type</option>
                                        <option value="partner"
                                            <?php echo ($partner['partnership_type'] == 'partner') ? 'selected' : ''; ?>>
                                            Partner</option>
                                        <option value="sponsor"
                                            <?php echo ($partner['partnership_type'] == 'sponsor') ? 'selected' : ''; ?>>
                                            Sponsor</option>
                                    </select>
                                </div>
                            </div>
                            <div class="button">
                                <input type="submit" value="Update Partner" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Scripts -->
    <script src="assets/js/main.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>