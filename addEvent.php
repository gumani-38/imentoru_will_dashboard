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
          >Add New Event</span
        >
        <div class="align-center">
          <div class="form-container">
            <div class="content">
              <form action="./php/addEvent.php" method="post">
                <div class="user-details">
                  <div class="input-box">
                    <span class="details">Name</span
                    ><input
                      type="text"
                      name="name"
                      placeholder="Enter event name"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Start Date</span
                    ><input type="date" name="start_date" required />
                  </div>
                  <div class="input-box">
                    <span class="details">End Date</span
                    ><input type="date" name="end_date" required />
                  </div>
                  <div class="input-box">
                    <span class="details">Event Link</span
                    ><input
                      type="text"
                      name="event_link"
                      placeholder="Enter event link"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Start Time</span
                    ><input type="time" name="start_time" required />
                  </div>
                  <div class="input-box">
                    <span class="details">End Time</span
                    ><input type="time" name="end_time" required />
                  </div>
                  <div class="input-box">
                    <span class="details">Event Location</span
                    ><input
                      type="text"
                      name="event_location"
                      placeholder="Enter event location or venue"
                      required
                    />
                  </div>
                  <div class="input-box">
                    <span class="details">Description</span
                    ><textarea
                      name="description"
                      cols="39"
                      rows="7"
                      style="height: 100px"
                      placeholder="Enter the event description"
                    ></textarea>
                  </div>
                </div>
                <div class="button">
                  <input type="submit" value="Add Event" />
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