<?php
function getdb(){
	$connessione = mysqli_connect("localhost", "root", "", "ALBO_DIPLOMATI");
	
	if (!$connessione)
	{
	die('Impossibile Connettersi: ' . mysql_error());
	}
}