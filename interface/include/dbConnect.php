<?php

define("HOST", "localhost");     // The host you want to connect to.
define("USER", "purgeu");    // The database username.
define("PASSWORD", "purgepass");    // The database password.
define("DATABASE", "purgePlus");    // The database name.function dbConnect() {
  
function dbConnect() {
	$mysqli = new mysqli(HOST, USER, PASSWORD, DATABASE);
	return $mysqli;
}
 ?>
