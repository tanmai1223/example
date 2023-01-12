
<?php 

/*
file name           : init.php
database connection : buspassdatabase
table               : -
purpose             : 

     The functionality of this page is to connect to database.
	 

*/

?>

<?php


$host="localhost";
$user="root";
$password="";
$db="buspassdatabase1";

$conn = mysqli_connect($host, $user, $password);
mysqli_select_db($conn,$db);


?>