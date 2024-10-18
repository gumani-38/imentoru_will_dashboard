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
    <title>Imentoru Dashboard</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="module" src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ionic/core/css/ionic.bundle.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
</head>

<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
        <?php include("./components/LeftNavBar.php"); ?>

        <!-- ========================= Main ==================== -->
        <div class="main">
            <?php include("./components/TopBar.php"); ?>

            <div class="search-wrapper">
                <input type="text" id="search-input" placeholder="search by name or email...">
            </div>

            <!-- ======================= Cards ================== -->

            <!-- ================ Order Details List ================= -->
            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Partners/Sponsors</h2>
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

                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Website</td>
                                <td>Province</td>
                                <td>Partnership Type</td>
                                <td>Phone No</td>
                                <td>Email</td>
                                <td>Summary</td>
                                <td>Action</td>
                            </tr>
                        </thead>

                        <tbody id="partners-data"></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script>
    document.addEventListener("DOMContentLoaded", function() {
        let currentPage = 1;
        const limit = 10;

        // Function to fetch data from the server
        function fetchData(page = 1, searchTerm = '') {
            fetch(
                    `./php/fetchPartners.php?page=${page}&limit=${limit}&search=${encodeURIComponent(searchTerm)}`
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
                        document.getElementById("partners-data").innerHTML =
                            `<tr><td colspan="8">${data.error}</td></tr>`;
                        return;
                    }

                    // Update the HTML with the received data
                    document.getElementById("partners-data").innerHTML = data.html;
                    const btns = document.querySelectorAll(".btn-remove");
                    document.getElementById("current-page").innerText = data.page;
                    document.getElementById("total-pages").innerText = data.totalPages;

                    // Disable/enable pagination buttons
                    document.getElementById('prev-page').style.visibility = (data.page > 1) ? 'visible' :
                        'hidden';
                    document.getElementById('next-page').style.visibility = (data.page < data.totalPages) ?
                        'visible' : 'hidden';
                    btns.forEach(btn => {
                        btn.addEventListener('click', function(event) {
                            event
                                .preventDefault(); // Prevent default action if the button is a link or form submit

                            const contactId = this.dataset
                                .id; // Assuming you're storing the ID in a data attribute

                            // Check if contactId is valid
                            if (!contactId) {
                                console.error('Invalid contact ID.');
                                return;
                            }

                            fetch(`./php/deletePartner.php`, {
                                    method: 'POST',
                                    headers: {
                                        'Content-Type': 'application/x-www-form-urlencoded' // Set content type
                                    },
                                    body: new URLSearchParams({
                                        id: contactId
                                    }) // Send ID in request body
                                })
                                .then(response => response.json())
                                .then(result => {
                                    if (result.success) {
                                        // Optionally, you can remove the row from the table
                                        this.closest('tr').remove();
                                    } else {
                                        console.error('Failed to remove contact:',
                                            result.error);
                                    }
                                })
                                .catch(error => console.error('Error:', error));
                        });
                    });
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


    <!-- =========== Scripts =========  -->
    <script src="assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>