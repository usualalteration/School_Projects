<?php
require_once 'head.php';
?>
<body>
	<?php
	// Valore fornito dall'utente
	$citta = $_POST['citta'];
	
	require_once 'config.php';
	$conn = getdb();

	$selectCitta = "SELECT DISTINCT citta.nomeCitta From citta INNER JOIN utenti WHERE citta.idCitta = $citta ORDER BY citta";
	$resultCitta = mysqli_query($conn, $selectCitta);
	while($row = $resultCitta->fetch_assoc()){
		echo "<h2 align='center'>Elenco studenti città di: " . $row["nomeCitta"] . "</h2>" . "<br>";
	}	

	$selectUtenti = "SELECT * FROM Diplomati WHERE Residenza = '$citta'";
	$resultUtenti = mysqli_query($conn, $selectUtenti);
	?>
	<table border="1" align="center" width="60%">
		<tr>
			<th>Codice</th> 
			<th>Cognome</th>
			<th>Nome</th>
			<th>Residenza</th>
			<th>Anno diploma</th>
			<th>Corso</th>
			<th>Voto</th>
		</tr>
		<?php
		while($row = $resultUtenti->fetch_assoc()){
			echo "<tr>";
			echo "<td>" . $row["idUtente"] . "</td>";
			echo "<td>" . $row["cognome"] . "</td>";
			echo "<td>" . $row["nome"] . "</td>";
			echo "<td>" . $row["residenza"] . "</td>";
			echo "<td>" . $row["anno_diploma"] . "</td>";
			echo "<td>" . $row["corso"] . "</td>";
			echo "<td>" . $row["voto"] . "</td>";
			echo "</tr>";
		}
		?>
	</table>
</body>
</html>