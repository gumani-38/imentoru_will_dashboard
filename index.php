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
    <script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
    <link rel="stylesheet" href="./assets/css/style.css" />
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .wrap-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            margin-bottom: 10px;
            padding: 10px;
        }

        .forum-container {
            margin: 12px;
            padding: 12px;
            border-radius: 4px;
            box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
        }

        .forum-card {
            display: flex;
            margin: 10px 0;
            align-items: center;
            flex-direction: row;
        }

        .forum-card img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: white;
        }

        .justify-wrapper {
            margin-top: 3px;
            display: flex;
            align-items: center;
            justify-content: space-between;

        }

        .forum-card .content {
            margin-left: 6px;
            width: 100%;
        }

        .forum-card p {
            font-size: 13px;
            color: var(--black2);
        }

        .chart-box {
            height: 360px;
            margin: 0 20px;
            max-width: 500px;
        }

        .task-card {
            padding: 8px;
            margin: 7px;
            border-radius: 4px;
            background-color: #f5f5f5;
        }

        .task-card p {
            font-size: 13px;
        }

        .badge {
            border-radius: 20px;
            font-size: 12px;
            padding: 1px 3px;
            background-color: black;
            color: white;
        }

        .badge.red {
            background-color: red;
            color: white;
        }

        .forum-card .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-direction: row;
        }

        .task-container {
            max-width: 500px;
            width: 100%;
            display: flex;
            flex-direction: column;
            padding: 10px;
            border-radius: 4px;
            box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
        }

        .flex-row {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            flex-direction: row;
            margin-top: 8px;
        }

        .check-btn {
            border: 2px solid #00aee0;
            background-color: transparent !important;
            outline: none;
            cursor: pointer;
            border-radius: 50%;
            width: 20px;
            margin-right: 6px;
            height: 20px;
        }

        .check-btn i {
            color: green;
        }

        .modal-box {
            max-width: 600px;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 15px;
            background-color: white;
            border-radius: 5px;
            flex-direction: column;
        }

        .modal-box input {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            outline: none;
            background-color: #f5f5f5;
            margin: 10px 0;
        }

        .modal-popup-container {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            display: none;
            z-index: 15;
            align-items: center;
            justify-content: center;
            background-color: rgba(83, 82, 82, 0.5);
        }

        .modal-popup-container.show {
            display: flex;
        }

        .close-btn {
            background-color: transparent;
            color: red;
            font-size: 22px;
            border: 0;
            cursor: pointer;
            margin-bottom: 20px;
        }

        .btn {
            background: black;
            color: white;
            width: 100%;
            border: none;
            border-radius: 3px;
            padding: 7px;
            font-size: 17px;
            font-weight: bold;
        }

        .btn.primary {
            background: linear-gradient(to right, #00aee0 0%, #00fedc 51%, #00aee0 100%);
        }

        .flex-end {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: flex-end;
        }

        .message-box {
            max-width: 550px;
            width: 100%;
        }

        .message-field {
            position: relative;
        }

        .message-field input {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            outline: none;
            background-color: #f5f5f5;
            margin: 10px 0;
        }

        .send-btn {
            background: linear-gradient(to right, #00aee0 0%, #00fedc 51%, #00aee0 100%);
            color: white;
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: none;
            border-radius: 50%;
            font-size: 19px;
            cursor: pointer;
            position: absolute;
            right: 4px;
            top: 13px;
        }



        .dropdown-menu {
            position: absolute;
            top: 70px;
            right: 8px;
            background-color: #999;
            color: white;
            border-radius: 8px;
            padding: 10px 20px;
            text-decoration: none;
            list-style: none;
            display: none;

            text-align: center;
            width: 200px;
        }

        .dropdown-menu.active {
            display: block;
        }

        .dropdown-menu span {
            text-transform: capitalize;
            font-size: 15px;
            font-weight: 500;
        }

        .dropdown-menu p {
            font-size: 13px;
        }

        .dropdown-menu::before {
            content: "";
            position: absolute;
            top: -10px;
            right: 13px;
            height: 20px;
            width: 20px;
            background: #999;
            transform: rotate(45deg);
        }
    </style>
</head>

<body>
    <div class="container">
        <?php include("./components/LeftNavBar.php"); ?>
        <div class="main">
            <?php include("./components/TopBar.php"); ?>

            <div class="btn-form-wrapper">
                <a href="event.html" style="
              background-color: black;
              color: #fff;
              font-weight: bold;
              padding: 4px  15px;
              cursor: pointer;
              border-radius: 3px;
              margin:20px;
            ">
                    Event
                </a>
                <a style="
              background:linear-gradient(to right, #00aee0 0%, #00fedc 51%, #00aee0 100%);
              color: #fff;
              font-weight: bold;
              padding: 4px  15px;
              border-radius: 3px;
            cursor: pointer;
              margin:20px;
            " class="add-task-btn">Add Task</a>
            </div>
            <div class="wrap-container">
                <div id="chartContainer" class="chart-box"></div>
                <div class="task-container">
                    <div class="justify-wrapper">
                        <h2>Tasks</h2>
                        <div class="pagination">
                            <?php
                            include("./php/connection.php");

                            // Define the number of tasks per page
                            $tasksPerPage = 5;

                            // Get the current page number from the URL, default to 1 if not set
                            $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

                            // Calculate the offset for the SQL query
                            $offset = ($page - 1) * $tasksPerPage;

                            // Get the total number of tasks for the user
                            $user = $_SESSION['username'];
                            $totalTasksQuery = $conn->prepare("SELECT COUNT(*) AS total FROM task WHERE username = ?");
                            $totalTasksQuery->bind_param("s", $user);
                            $totalTasksQuery->execute();
                            $totalTasksResult = $totalTasksQuery->get_result();
                            $totalTasks = $totalTasksResult->fetch_assoc()['total'];

                            // Calculate the total number of pages
                            $totalPages = ceil($totalTasks / $tasksPerPage);

                            // Fetch tasks for the current page
                            $sql = $conn->prepare("SELECT id, task, date_set, time_set, date_due, time_due, task_status,active FROM task WHERE username = ? LIMIT ? OFFSET ?");
                            $sql->bind_param("sii", $user, $tasksPerPage, $offset);
                            $sql->execute();
                            $result = $sql->get_result();

                            // Pagination controls
                            if ($page > 1) {
                                echo '<a href="?page=' . ($page - 1) . '" class="pagination-btns"><ion-icon name="chevron-back-outline"></ion-icon></a>';
                            }

                            echo "<span>$page/$totalPages</span>";

                            if ($page < $totalPages) {
                                echo '<a href="?page=' . ($page + 1) . '" class="pagination-btns"><ion-icon name="chevron-forward-outline"></ion-icon></a>';
                            }
                            ?>
                        </div>
                    </div>

                    <?php
                    // Display tasks
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo "<div class='task-card'>";
                            echo "<div class='justify-wrapper'>";
                            echo "<span class='badge'>Created at: " . htmlspecialchars($row['date_set']) . "</span>";
                            echo "<span class='badge red'>Due: " . htmlspecialchars($row['date_due']) . "</span>";
                            echo "</div>";
                            echo "<div class='flex-row'>";
                            if ($row['active'] == 0) {
                                echo "<button class='check-btn' id='update-task-btn' data-task-id='{$row['id']}'> <i class='fa-solid fa-check'></i></button>";
                            } else {
                                echo "<button class='check-btn' id='update-task-btn' data-task-id='{$row['id']}'> </button>";
                            }
                            echo "<p>" . htmlspecialchars($row['task']) . "</p>";
                            echo "</div>";
                            echo "</div>";
                        }
                    } else {
                        echo "<p>No tasks found for the username " . htmlspecialchars($user) . "</p>";
                    }
                    ?>
                </div>
            </div>

            <?php
            include("./php/connection.php");
            $messagesPerPage = 8;
            // Get the current page number from the URL, defaulting to page 1 if not set
            $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
            // Calculate the offset for the SQL query
            $offset = ($page - 1) * $messagesPerPage;
            // Get the total number of messages from the database
            $totalMessagesQuery = "SELECT COUNT(*) AS total FROM quick_forum";
            $totalMessagesResult = $conn->query($totalMessagesQuery);
            $totalMessages = $totalMessagesResult->fetch_assoc()['total'];
            // Calculate the total number of pages
            $totalPages = ceil($totalMessages / $messagesPerPage);
            // Fetch the messages for the current page
            $query = "SELECT username, message, date_sent, time_sent FROM quick_forum ORDER BY date_sent DESC, time_sent DESC LIMIT $messagesPerPage OFFSET $offset";
            $result = $conn->query($query);
            ?>

            <div class="forum-container">
                <div class="justify-wrapper">
                    <h2 style="margin-bottom:20px">Quick Forum</h2>
                    <div class="pagination">
                        <?php if ($page > 1): ?>
                            <a href="?page=<?php echo $page - 1; ?>" class="pagination-btns">
                                <ion-icon name="chevron-back-outline"></ion-icon>
                            </a>
                        <?php endif; ?>

                        <span><?php echo $page . '/' . $totalPages; ?></span>

                        <?php if ($page < $totalPages): ?>
                            <a href="?page=<?php echo $page + 1; ?>" class="pagination-btns">
                                <ion-icon name="chevron-forward-outline"></ion-icon>
                            </a>
                        <?php endif; ?>
                    </div>
                </div>

                <?php
                // Loop through the results and display each message
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $username = htmlspecialchars($row['username']);
                        $message = htmlspecialchars($row['message']);
                        $date_sent = htmlspecialchars($row['date_sent']);
                        $time_sent = htmlspecialchars($row['time_sent']);
                ?>

                        <div class="forum-card">
                            <img src="./assets/imgs/user.png" alt="">
                            <div class="content">
                                <div class="header">
                                    <span style="font-size:14px;"><?php echo $username; ?></span>
                                    <p style="color:#2a2185;"><?php echo $date_sent . ', ' . $time_sent; ?></p>
                                </div>
                                <div class="justify-wrapper">
                                    <p><?php echo $message; ?></p>
                                </div>
                            </div>
                        </div>


                <?php
                    }
                } else {
                    echo "<p>No messages found.</p>";
                }
                ?>

                <div class="message-box">
                    <form action="./php/addForum.php" method="post">
                        <div class="message-field">
                            <input type="text" name="message" placeholder="Type new message..." required>
                            <button class="send-btn"><i class="fa-solid fa-location-arrow"></i></button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Notifications</h2>
                        <div class="pagination">
                            <a href="#" class="pagination-btns">
                                <ion-icon name="chevron-back-outline"></ion-icon>
                            </a>
                            <span>1/5</span>
                            <a href="#" class="pagination-btns">
                                <ion-icon name="chevron-forward-outline"></ion-icon>
                            </a>
                        </div>
                    </div>
                    <div class="search-wrapper">
                        <input type="text" placeholder="search by name,tickect no, email...">
                    </div>


                    <table>
                        <thead>
                            <tr>
                                <td>Ticket No</td>
                                <td>Full Name</td>
                                <td>Email</td>
                                <td>Phone</td>
                                <td>Province</td>
                                <td>Date Created</td>
                                <td>Subject</td>
                                <td>Message</td>
                                <td>Action</td>
                            </tr>
                        </thead>

                        <tbody id="contact-data"></tbody>
                    </table>
                </div>

                <!-- ================= New Customers ================ -->
            </div>
        </div>

    </div>
    <div class="modal-popup-container">
        <div class="modal-box">
            <div class="justify-wrapper" style="width: 100%;">
                <span style="font-weight: 700;">New Task</span>
                <button class="close-btn">
                    <ion-icon name="close-outline"></ion-icon>
                </button>
            </div>
            <form action="./php/addTask.php" method="post">
                <input type="text" name="description" placeholder="enter task description" required>
                <label for="duedate" style="font-size: 13px;
                ">Date Due:</label>
                <input type="date" name="deadline" id="duedate" required>
                <button class="btn primary">Add Task</button>
            </form>
        </div>
    </div>

    <?php if ($_SESSION["isLockedScreen"]) return include('./LockScreen.php'); ?>

    <!-- =========== Scripts =========  -->
    <script src="assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


    <script>
        document.addEventListener("DOMContentLoaded", function() {
            fetch("./php/fetchContact.php")
                .then((response) => response.text())
                .then((data) => {
                    document.getElementById("contact-data").innerHTML = data;
                })
                .catch((error) => console.error("Error fetching events:", error));
        });
        const popModal = document.querySelector('.modal-popup-container');
        const closeBtn = document.querySelector(".close-btn");
        const addTaskBtn = document.querySelector(".add-task-btn");
        addTaskBtn.addEventListener("click", function() {
            popModal.classList.add("show");
        });
        closeBtn.addEventListener("click", function() {
            popModal.classList.remove("show");
        });
    </script>


    <script>
        document.addEventListener("DOMContentLoaded", function() {
            fetch("./php/fetchDashboard.php")
                .then(response => response.json())
                .then(data => {
                    const dataPoints = [{
                            y: parseInt(data.mentors),
                            label: "Mentors"
                        },
                        {
                            y: parseInt(data.mentees),
                            label: "Mentees"
                        },
                        {
                            y: parseInt(data.programmes),
                            label: "Programmes"
                        },
                        {
                            y: parseInt(data.directors),
                            label: "Directors"
                        },
                        {
                            y: parseInt(data.country),
                            label: "Country"
                        },
                        {
                            y: parseInt(data.partners),
                            label: "Partners"
                        },
                        {
                            y: parseInt(data.sponsors),
                            label: "Sponsors"
                        },
                        {
                            y: parseInt(data.coordinators),
                            label: "Coordinators"
                        },
                        {
                            y: parseInt(data.province),
                            label: "Province"
                        }
                    ];

                    const chart = new CanvasJS.Chart("chartContainer", {
                        axisY: {
                            title: "Counts"
                        },
                        data: [{
                            type: "line",
                            dataPoints: dataPoints
                        }]
                    });

                    chart.render();
                })
                .catch(error => console.error("Error fetching counts:", error));
        });
        document.querySelector('.lockScreen-btn').addEventListener('click', function() {
            // Send an AJAX request to the server to lock the screen
            fetch('lock_screen.php', {
                    method: 'POST'
                })
                .then(response => response.text())
                .then(data => {
                    // Optionally, you can redirect to the lock screen or reload the page
                    window.location.reload();
                });
        });

        const dropdownMenuBtn = document.querySelector('.user');
        const dropdownMenuContainer = document.querySelector('.dropdown-menu')
        dropdownMenuBtn.addEventListener('click', function() {
            dropdownMenuContainer.classList.toggle('active');
        });

        document.addEventListener("DOMContentLoaded", function() {
            document.querySelectorAll('#update-task-btn').forEach(button => {
                button.addEventListener('click', function() {
                    const taskId = this.dataset.taskId;
                    const isActive = this.classList.contains('active');

                    fetch('./php/updateTask.php', {
                            method: 'POST',
                            headers: {
                                'Content-Type': 'application/json'
                            },
                            body: JSON.stringify({
                                id: taskId,
                                active: isActive ? 0 : 1 // Toggle status
                            })
                        })
                        .then(response => response.json())
                        .then(data => {
                            if (data.success) {
                                this.classList.toggle('active', !isActive);
                                // Optionally, update the button text or appearance
                            } else {
                                console.error('Failed to update status:', data.message);
                            }
                        })
                        .catch(error => console.error('Error:', error));
                });
            });
        });
    </script>
</body>

</html>