<?php
	$conn= mysqli_connect("localhost","root","","db_product") or die("Error: " . mysqli_error($con));
	mysqli_query($conn, "SET NAMES 'utf8' "); 
?>