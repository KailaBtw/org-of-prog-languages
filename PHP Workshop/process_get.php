<?php
$firstname = $_GET['firstname'] ?? '';
$lastname  = $_GET['lastname'] ?? '';
$address   = $_GET['address'] ?? '';

echo "<h2>GET Data Received</h2>";
echo "First Name: " . htmlspecialchars($firstname) . "<br>";
echo "Last Name: " . htmlspecialchars($lastname) . "<br>";
echo "Address: " . htmlspecialchars($address) . "<br>";
?>