<?php
    mysql_connect("mysql.andrewjackson.io","php_user","mru9pnYFIQ7=iXj");
    @mysql_select_db("test") or die( "Unable to select database");
    $query="SELECT * FROM names";
    $result=mysql_query($query);
    $num=mysql_numrows($result);
    mysql_close();
    echo "<html><head><title>https://github.com/andrewjacksonio/VagrantPuppetLAMP</title></head>";
    echo "<body><center><h1>Database Output</h1><br><br>";
    $i=0;
    echo "<table border=1><tr><td><b>Firstname</b></td><td><b>Lastname</b></td></tr>";
    while ($i<$num) {
        $firstname=mysql_result($result,$i,1);
        $lastname=mysql_result($result,$i,2);
        echo "<tr><td>$firstname</td><td>$lastname</td</tr>";
        $i++;
    }
    echo "</table></center></body></html>";
?>