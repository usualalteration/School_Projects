<?php
//Creazione oggetto msqli per realizzare la connessione
$con = new mysqli("localhost","root", "", "utenze");
if (mysqli_connect_errno()){
    echo("Connessione non effettuata: ".mysqli_connect_error()."<br>");
    exit();
}

$sql="SELECT * FROM citta";
$results=$con->query($sql);
while($citta=$results->fetch_assoc()){
    $cittas[]=$citta;
}

$encoded_data=json_encode($cittas, JSON_PRETTY_PRINT);
file_put_contents('cittaUtenze.json', $encoded_data);
echo("File creato ");
?>