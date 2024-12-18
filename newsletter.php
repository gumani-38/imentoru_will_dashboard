<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Imentoru Dashboard</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <script type="module" src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ionic/core/css/ionic.bundle.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
</head>

<body>
    <div class="container">
        <?php include("./components/LeftNavBar.php"); ?>

        <div class="main">
            <?php include("./components/TopBar.php"); ?>

            <div class="search-wrapper">
                <input type="text" id="search-input" placeholder="search by email...">
            </div>

            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>NewsLetter</h2>
                        <div class="pagination">
                            <button id="prev-page" class="pagination-btns">
                                <ion-icon name="chevron-back-outline"></ion-icon>
                            </button>
                            <span id="current-page">1</span>/<span id="total-pages">5</span>
                            <button id="next-page" class="pagination-btns">
                                <ion-icon name="chevron-forward-outline"></ion-icon>
                            </button>
                        </div>
                    </div>

                    <table>
                        <thead>
                            <tr>
                                <td>No</td>
                                <td>Email</td>
                                <td>Date Created</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody id="mentor-data"></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let currentPage = 1;
            const limit = 5;

            // Function to fetch newsletter data
            function fetchData(page = 1, searchTerm = '') {
                fetch(
                        `./php/fetchNewsletter.php?page=${page}&limit=${limit}&search=${encodeURIComponent(searchTerm)}`)
                    .then(response => response.json())
                    .then(data => {
                        if (data.error) {
                            console.error("Server Error:", data.error);
                            document.getElementById("mentor-data").innerHTML =
                                `<tr><td colspan="4">${data.error}</td></tr>`;
                            return;
                        }

                        // Update table rows with the fetched HTML content
                        document.getElementById("mentor-data").innerHTML = data.html;

                        // Update the pagination display
                        document.getElementById("current-page").innerText = data.page;
                        document.getElementById("total-pages").innerText = data.totalPages;

                        // Enable/Disable pagination buttons
                        document.getElementById("prev-page").disabled = data.page <= 1;
                        document.getElementById("next-page").disabled = data.page >= data.totalPages;
                    })
                    .catch(error => console.error("Error fetching data:", error));
            }

            // Initial load
            fetchData();

            // Handle search input change
            document.getElementById('search-input').addEventListener('input', function() {
                const searchTerm = this.value;
                currentPage = 1; // Reset to the first page
                fetchData(currentPage, searchTerm);
            });

            // Pagination button handlers
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

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>