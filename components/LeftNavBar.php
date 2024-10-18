<?php
// Get the current page name
$currentPage = basename($_SERVER['PHP_SELF']);
?>

<div class="navigation">
    <!-- Navigation content -->
    <ul>
        <li style="background: white; width: 100%;
            height: fit-content;
            border: 0;
            height: 100px;
            border-radius: 0;
            display: flex;
            padding: 0 30px;">
            <a href="#">
                <span class="title">
                    <img src="./assets/imgs/imentoru-logo.png" style="height: 90px; width: 190px" alt="" />
                </span>
            </a>
        </li>

        <li class="<?php echo ($currentPage == 'index.php') ? 'hovered' : ''; ?>">
            <a href="index.php">
                <span class="icon">
                    <ion-icon name="home-outline"></ion-icon>
                </span>
                <span class="title">Dashboard</span>
            </a>
        </li>

        <li class="<?php echo ($currentPage == 'mentor.php') ? 'hovered' : ''; ?>">
            <a href="mentor.php">
                <span class="icon">
                    <ion-icon name="people-outline"></ion-icon>
                </span>
                <span class="title">Mentors</span>
            </a>
        </li>

        <li class="<?php echo ($currentPage == 'partner.php') ? 'hovered' : ''; ?>">
            <a href="partner.php">
                <span class="icon">
                    <i class="fa-solid fa-handshake"></i>
                </span>
                <span class="title">Partners/Sponsors</span>
            </a>
        </li>

        <li class="<?php echo ($currentPage == 'mentee.php') ? 'hovered' : ''; ?>">
            <a href="mentee.php">
                <span class="icon">
                    <ion-icon name="people-outline"></ion-icon>
                </span>
                <span class="title">Mentees</span>
            </a>
        </li>

        <li class="<?php echo ($currentPage == 'newsletter.php') ? 'hovered' : ''; ?>">
            <a href="newsletter.php">
                <span class="icon">
                    <i class="fa-solid fa-handshake"></i>
                </span>
                <span class="title">NewsLetter</span>
            </a>
        </li>

        <li>
            <a href="./php/logout.php">
                <span class="icon">
                    <ion-icon name="log-out-outline"></ion-icon>
                </span>
                <span class="title">Sign Out</span>
            </a>
        </li>
    </ul>
</div>