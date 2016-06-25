<?php
    $firstname=$_POST['firstname'];
    $lastname=$_POST['lastname'];
    mysql_connect("mysql.andrewjackson.io","php_user","mru9pnYFIQ7=iXj");
    @mysql_select_db("test") or die( "Unable to select database");
    $query = "INSERT INTO names VALUES('','$firstname','$lastname')";
    mysql_query($query);
    mysql_close();
    header('Location: showtable.php');
?>