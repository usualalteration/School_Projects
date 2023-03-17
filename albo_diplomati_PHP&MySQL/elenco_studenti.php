<?php
require_once 'head.php';
?>
<h2 align='center'>Elenco studenti</h2>
<div align="center">
	<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>"> <!--Il nome file dello script attualmente in esecuzione-->
		Cerca studente per città: <input type="text" name="citta" placeholder="Città">
		<input type="submit" name="submit" value="Cerca">
	</form>
</div>
<br>
<table border="1" align="center" width="60%">
	<tr>
		<th>Codice</th>
		<th>Cognome</th>
		<th>Nome</th>
		<th>Residenza</th>
		<th>Anno diploma</th>
        <th>Corso</th>
        <th>Voto</th>
		<th></th>
	</tr>
	<?php
	if (isset($_POST['submit'])) {
		$anno = $_POST['citta'];
	} else {
		$anno = "";
	}

	$conn = getdb();

	$sqlUtenti = "SELECT Diplomati.ID, Diplomati.Cognome,<!-- TODO vedere se funziona la query-->
    Diplomati.Nome, Diplomati.Residenza, Diplomati.Anno_diploma,
    Diplomati.Corso, Diplomati.Voto FROM utenti INNER JOIN citta
    WHERE (citta.idCitta = Diplomati.citta) AND
    (cognome LIKE '%" . $cognome . "%')";
	$resultStudenti = mysqli_query($conn, $sqlStudenti);
	while ($row = $resultStudenti->fetch_assoc()) {
		echo "<tr>";
		echo "<td>" . $row["ID"] . "</td>";
		echo "<td>" . $row["Cognome"] . "</td>";
		echo "<td>" . $row["Nome"] . "</td>";
		echo "<td>" . $row["Residenza"] . "</td>";
		echo "<td>" . $row["Anno_diploma"] . "</td>";
		echo "<td>" . $row["Corso"] . "</td>";
		echo "<td>" . $row["Voto"] . "</td>";
		echo "<td align='center'>" . "<a href='edit_utente.php?idStudente=" . $row["idStudente"] . "'" . "<i class='bi bi-pencil-square'></i>" . "</a></td>";
		echo "</tr>";
	}
	?>
</table>
</body>

</html>