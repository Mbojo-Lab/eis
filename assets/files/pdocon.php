<?php
/*** mysql hostname ***/
$hostname = 'localhost';
$port = '5432';

$dbname='eis';
$username = 'postgres';
$password = 'admin';


try {
    /*** connect to postgreSQL database ***/
    $pdo=new PDO("pgsql:host=$hostname;port=$port;dbname=$dbname;user=$username;password=$password");
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//echo 'Connected to database';
} catch(PDOException $e){
    echo $e->getMessage();
}
?>
