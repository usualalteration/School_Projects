<?php
require_once 'head.php';

$idUtente = 0;
if (isset($_GET['idStudente'])) {
    $idUtente = $_GET['idStudente'];
}
?>
<body>
	<h1 align="center">
		Modifica utente
	</h1>
	<table align="center">
		<tr>
			<td>
				<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
					<?php
					$conn = getdb();
					$selectUtente = "SELECT * From Diplomati WHERE ID = '$idUtente'";
					$resultUtente = mysqli_query($conn, $selectUtente);

					while($row = $resultUtente->fetch_assoc()){
						echo "Id Utente: <input type='text' name='idUtente' value='". $row["ID"] . "' readonly='readonly'><br>";
						echo "Cognome: <input type='text' name='cognome' value='". $row["Cognome"] . "'><br>";
						echo "Nome: <input type='text' name='nome' value='". $row["Nome"] . "'><br>";						 
						echo "Residenza <input type='text' name='residenza' value='". $row["Residenza"] . "'><br>";				
						echo "Anno diploma: <input type='text' name='indirizzo' value='". $row["Anno_diploma"] . "'><br>";				
						echo "Corso: <input type='text' name='indirizzo' value='". $row["Corso"] . "'><br>";				
						echo "Voto: <input type='text' name='indirizzo' value='". $row["Voto"] . "'><br>";				
						echo "<br><input type='submit' name='submit' value='Modifica'>";
					}
					?>
				</form>
			</td>
		</tr>
	</table>

	<?php
	if(isset($_POST['submit']))
	{
		$idUtente = $_POST['idUtente'];
		$cognome = $_POST['cognome'];
		$nome = $_POST['nome'];
		$indirizzo = $_POST['indirizzo'];

		if($cognome != null && $nome != null && $indirizzo != null){
			$updateUtente = "UPDATE utenti SET cognome = '$cognome', nome = '$nome', indirizzo = '$indirizzo' WHERE idUtente = $idUtente";
			$resultUtente = mysqli_query($conn, $updateUtente);

			echo "<p align='center'><strong>[$idUtente] - $cognome $nome</strong>" . 
			"<br><br>è stato modificato correttamente!</p>";
		}
		else{
			echo "<p align='center'><strong>Compila tutti i dati correttamente!</p>";
		}
	}
	?>
</body>
</html>