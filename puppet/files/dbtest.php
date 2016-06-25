<?php
    $conn = mysql_connect('mysql.andrewjackson.io', 'php_user', 'mru9pnYFIQ7=iXj');
    if (!$conn) {
        die('Could not connect: ' . mysql_error());
    }
    echo 'Connected successfully :)';
    mysql_close($conn);
?>