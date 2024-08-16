<?php
session_start();
$_SESSION["isLockedScreen"] = true;
echo "Screen locked";
