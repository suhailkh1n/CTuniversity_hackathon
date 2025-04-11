<?php
$conn=mysqli_connect("localhost","root","","db_eval");
if($conn){
    echo "succesa";
}else{
    die(mysql_error($con));
}
?>