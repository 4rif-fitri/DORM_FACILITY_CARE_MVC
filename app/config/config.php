<?php

// Ini untuk LINK (Browser/HTML)
$protocol = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on') ? "https" : "http";
$host = $_SERVER['HTTP_HOST'];
$project_folder = str_replace($_SERVER['DOCUMENT_ROOT'], '', str_replace('\\', '/', dirname(__DIR__, 2)));
define('BASEURL', $protocol . "://" . $host . rtrim($project_folder, '/'));

// Ini untuk REQUIRE (Sistem Fail) - PENTING!
define('APPROOT', dirname(__DIR__, 2));
define("DB_HOST", "localhost");
define("DB_USER", "root");
define("DB_PASSWORD", "");
define("DB_NAME", "doom");

