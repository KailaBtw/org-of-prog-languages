<?php
$firstname2 = $_POST['firstname2'] ?? '';
$lastname2  = $_POST['lastname2'] ?? '';
$address2   = $_POST['address2'] ?? '';

echo "<h2>POST Data Received</h2>";
echo "First Name: " . htmlspecialchars($firstname2) . "<br>";
echo "Last Name: " . htmlspecialchars($lastname2) . "<br>";
echo "Address: " . htmlspecialchars($address2) . "<br>";
?>