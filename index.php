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


            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Notifications</h2>
                        <div class="pagination">
                            <a href="#" class="pagination-btns" id="prev-page">
                                <ion-icon name="chevron-back-outline"></ion-icon>
                            </a>
                            <span id="current-page">1</span>/<span id="total-pages">5</span>
                            <a href="#" class="pagination-btns" id="next-page">
                                <ion-icon name="chevron-forward-outline"></ion-icon>
                            </a>
                        </div>
                    </div>
                    <div class="search-wrapper">
                        <input type="text" id="search-input" placeholder="search by name or email...">
                    </div>


                    <table>
                        <thead>
                            <tr>
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

    <?php if ($_SESSION["isLockedScreen"]) return include('./LockScreen.php'); ?>

    <!-- =========== Scripts =========  -->
    <script src="assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let currentPage = 1;
            const limit = 10;

            // Function to fetch data from the server
            function fetchData(page = 1, searchTerm = '') {
                fetch(
                        `./php/fetchContact.php?page=${page}&limit=${limit}&search=${encodeURIComponent(searchTerm)}`
                    )
                    .then(response => {
                        if (!response.ok) {
                            throw new Error(`HTTP error! status: ${response.status}`);
                        }
                        return response.json();
                    })
                    .then(data => {
                        if (data.error) {
                            console.error("Server Error:", data.error);
                            document.getElementById("contact-data").innerHTML =
                                `<tr><td colspan="8">${data.error}</td></tr>`;
                            return;
                        }

                        // Update the HTML with the received data
                        document.getElementById("contact-data").innerHTML = data.html;
                        document.getElementById("current-page").innerText = data.page;
                        document.getElementById("total-pages").innerText = data.totalPages;

                        // Disable/enable pagination buttons
                        document.getElementById('prev-page').style.visibility = (data.page > 1) ? 'visible' :
                            'hidden';
                        document.getElementById('next-page').style.visibility = (data.page < data.totalPages) ?
                            'visible' : 'hidden';
                    })
                    .catch(error => console.error("Error fetching data:", error));
            }

            // Initial load
            fetchData();

            // Handle search input
            document.getElementById('search-input').addEventListener('keyup', function(event) {
                const searchTerm = this.value;
                currentPage = 1; // reset to first page
                fetchData(currentPage, searchTerm); // fetch data as you type
            });

            // Pagination handlers
            document.getElementById('prev-page').addEventListener('click', function() {
                if (currentPage > 1) {
                    currentPage--;
                    const searchTerm = document.getElementById('search-input').value;
                    fetchData(currentPage, searchTerm);
                }
            });

            document.getElementById('next-page').addEventListener('click', function() {
                const totalPages = parseInt(document.getElementById('total-pages').innerText);
                if (currentPage < totalPages) {
                    currentPage++;
                    const searchTerm = document.getElementById('search-input').value;
                    fetchData(currentPage, searchTerm);
                }
            });
        });
    </script>


    <script>
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