<?php
session_start();

// Check if the user is logged in, if not redirect them to login page
if (!isset($_SESSION['id'])) {
    header("Location: login.php");
    exit();
}

// Include the database connection file
include './php/connection.php';

// Get the mentee ID from the query string
if (isset($_GET['id'])) {
    $menteeId = $_GET['id'];

    // Prepare a statement to fetch the mentee data based on ID
    $stmt = $conn->prepare("SELECT * FROM mentees WHERE id = ?");
    $stmt->bind_param("i", $menteeId);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch the mentee data
        $mentee = $result->fetch_assoc();
    } else {
        echo "No mentee found with ID $menteeId";
        exit;
    }
} else {
    echo "No mentee ID specified.";
    exit();
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
                        <span style="font-weight: 500; color: #00aee0;">Update Mentee</span>
                    </div>

                    <div class="content">
                        <form action="./php/updateMentee.php" method="post">
                            <div class="user-details">
                                <!-- Hidden input to pass the mentee ID -->
                                <input type="hidden" name="id" value="<?php echo htmlspecialchars($mentee['id']); ?>" />

                                <div class="input-box">
                                    <span class="details">First Name</span>
                                    <input type="text" name="first_name"
                                        value="<?php echo htmlspecialchars($mentee['first_name']); ?>" readonly />
                                </div>
                                <div class="input-box">
                                    <span class="details">Last Name</span>
                                    <input type="text" name="last_name"
                                        value="<?php echo htmlspecialchars($mentee['last_name']); ?>" readonly />
                                </div>
                                <div class="input-box">
                                    <span class="details">Email</span>
                                    <input type="email" name="email"
                                        value="<?php echo htmlspecialchars($mentee['email']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">Created At</span>
                                    <input type="text" name="date_reg"
                                        value="<?php echo htmlspecialchars($mentee['date_reg']); ?>" readonly />
                                </div>
                                <div class="input-box">
                                    <span class="details">Phone Number</span>
                                    <input type="text" name="phone"
                                        value="<?php echo htmlspecialchars($mentee['phone']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">ID Number</span>
                                    <input type="text" name="id_number"
                                        value="<?php echo htmlspecialchars($mentee['id_number']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">Occupation</span>
                                    <input type="text" name="occupation"
                                        value="<?php echo htmlspecialchars($mentee['occupation']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">Town/Village</span>
                                    <input type="text" name="town_village"
                                        value="<?php echo htmlspecialchars($mentee['town_village']); ?>" required />
                                </div>
                                <div class="input-box">
                                    <span class="details">Province</span>
                                    <select name="province" required>
                                        <option value="">Select your province</option>
                                        <option value="Eastern Cape"
                                            <?php echo ($mentee['province'] == 'Eastern Cape') ? 'selected' : ''; ?>>
                                            Eastern Cape</option>
                                        <option value="Free State"
                                            <?php echo ($mentee['province'] == 'Free State') ? 'selected' : ''; ?>>Free
                                            State</option>
                                        <option value="Gauteng"
                                            <?php echo ($mentee['province'] == 'Gauteng') ? 'selected' : ''; ?>>Gauteng
                                        </option>
                                        <option value="KwaZulu-Natal"
                                            <?php echo ($mentee['province'] == 'KwaZulu-Natal') ? 'selected' : ''; ?>>
                                            KwaZulu-Natal</option>
                                        <option value="Matola (Mozambique)"
                                            <?php echo ($mentee['province'] == 'Matola (Mozambique)') ? 'selected' : ''; ?>>
                                            Matola (Mozambique)</option>
                                        <option value="Mpumalanga"
                                            <?php echo ($mentee['province'] == 'Mpumalanga') ? 'selected' : ''; ?>>
                                            Mpumalanga</option>
                                        <option value="North West"
                                            <?php echo ($mentee['province'] == 'North West') ? 'selected' : ''; ?>>
                                            North West</option>
                                        <option value="Northern Cape"
                                            <?php echo ($mentee['province'] == 'Northern Cape') ? 'selected' : ''; ?>>
                                            Northern Cape</option>
                                        <option value="Western Cape"
                                            <?php echo ($mentee['province'] == 'Western Cape') ? 'selected' : ''; ?>>
                                            Western Cape</option>
                                    </select>

                                </div>

                                <div class="input-box">
                                    <span class="details">Gender</span>
                                    <select name="gender" required>
                                        <option value="">Select gender</option>
                                        <option value="male"
                                            <?php echo ($mentee['gender'] == 'male') ? 'selected' : ''; ?>>male</option>
                                        <option value="female"
                                            <?php echo ($mentee['gender'] == 'female') ? 'selected' : ''; ?>>female
                                        </option>
                                        <option value="other"
                                            <?php echo ($mentee['gender'] == 'other') ? 'selected' : ''; ?>>other
                                        </option>
                                    </select>
                                </div>
                            </div>
                            <div class="button">
                                <input type="submit" value="Update Mentee" />
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